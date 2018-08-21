#!/bin/bash
set -u 

#mkdir -p ~/debug_logs/faq_module/
#docker cp `docker ps | grep faq-module | awk '{print $1}'`:/var/log/FAQModule2.0 ~/debug_logs/faq_module/ 


# deployer目录
deployerdir=/home/deployer/docker-compose
imageslist=`ls | grep .tar$`
tarline=$(ls | grep .tar$ | wc -l)
upimage=()
id=0
if [ -d $deployerdir ]
 then
   grep -l image $deployerdir/*.*ml > /dev/null
   if [[ ! $? -eq 0 ]]
     then
       echo "请检查deployer目录是否正确"
       exit 0
   fi
fi
# load docker images
if [[ $imageslist != "" ]]
then
  echo docker load images ......
  for i in $imageslist
  do
    upimage[$id]=`docker load < $i | grep Loaded | awk '{print $3}'`
    echo -e " load   ${upimage[$id]} \033[35m   done\033[0m"
    let id++
  done
else
  echo "没有找到tar包"
fi
echo
resetyml() {
#循环读取本地tar包load以后的镜像名全程
#如果已经成功导入的镜像与当前目录tar包数量相同，并且本地tar包不是0
echo
echo "正在准备更新docker 镜像的 tag ...... "
sleep 1
if [[ ${#upimage[@]} -eq ${tarline} ]] && [[ $imageslist != "" ]]
then
  for i in ${upimage[@]}
  do
#将导入的镜像名称从yml文件中找到匹配项，并替换
    echo
    grep ${i%:*} $deployerdir/*.*ml > /dev/null 2>&1
    if [ -n "${i%:*}" ] && [ $? -eq 0 ]
      then
        eval sed -i 's#${i%:*}.*#$i#g' $deployerdir/*.*ml
        if [ $? -eq 0 ]
          then
            echo -e "\033[35m tag replica file  \033[0m `grep -l ${i%:*} $deployerdir/*.*ml` "
            echo -e "\033[35m tag replica tag   \033[0m ${i}"
            echo -e "replica............ \033[35mfinish\033[0m"
        fi
    else
        echo "导入的镜像${i}在yaml文件中不存在，请填写完整"
        echo 
    fi
  done
else 
  echo "已成功加载镜像${#upimage[@]}个，但是本地tar包有${tarline}个，请检查......"
  eval echo "导入的镜像是  ${upimage[@]:-Null}"
  eval echo "本地的tar包有 $tarline 个"
  echo
  echo "目前判断当前目录没有tar包,则断定当前运行目录不是更新目录，直接退出"
  echo "如果确实不需要更新镜像，即没有tar要更新，则请注释 $0 脚本的该行退出规则"
  exit 0
fi
}

readmsinfo() {
  echo "需要手动指定数据库信息"
  read -t 90 -p "please input mysql user : "  MS_USER
  read -t 90 -p "please input mysql host:port : " MS_HOST
  read -t 90 -p "please input mysql password : " MS_PASS
  echo -e "\033[35m mysql user\033[0m : $MS_USER "
  echo -e "\033[35m mysql host:port\033[0m : $MS_HOST"
  echo -e "\033[35m mysql password\033[0m : $MS_PASS"
  echo -e "\033[33m 如果以上信息不正确，请输入 'N|n', 否则输入任意键\033[0m"
  enter=y
  read enter
  if [[ $enter == 'N' ]] || [[ $enter == 'n' ]]
    then
      readmsinfo
  fi
  echo 
}

dbtest() {
  mysql -u${MS_USER#*=} -p${MS_PASS#*=} -h ${MS_HOST%:*} -P ${MS_HOST#*:} -e "show databases" > /dev/null 2>&1
  if [ ! $? -eq 0 ]
    then
      echo "mysql 连接失败，请确认后再次输入"
      readmsinfo
  fi
  dblist=`mysql -u${MS_USER#*=} -p${MS_PASS#*=} -h ${MS_HOST%:*} -P ${MS_HOST#*:} -e "show databases"`
}

loadsqlfile(){
# 获取数据库账户密码等连接信息
if [ -f $deployerdir"/"dev-env ]
then
  MS_USER=`grep TE_MYSQL_DB_USER $deployerdir"/"dev-env`
  MS_HOST=`grep TE_MYSQL_DB_SERVER $deployerdir"/"dev-env`
  MS_HOST=${MS_HOST#*=}
  MS_PASS=`grep TE_MYSQL_DB_PASSWORD $deployerdir"/"dev-env`
  dbtest
else
  readmsinfo
  dbtest
fi
# 导入sql到数据库
for db in $dblist
do
  for sqlfile in `ls | grep .sql$`
    do
      if [[ $sqlfile =~ $db ]]
        then
        echo "正在导入sql文件，详情如下"
        echo "sql file $sqlfile ---->>>>> Database   $db"
        mysql -u${MS_USER#*=} -p${MS_PASS#*=} -h ${MS_HOST%:*} -P ${MS_HOST#*:} $db < $sqlfile
        if [ $? -eq 0 ]
          then
            echo -e "导入...............     \033[35mfinish\033[0m"
            echo
        else
            echo -e "sql 文件  导入失败................. \033[35merror\033[0m"
            echo
        fi
      fi
    done
done
}
reloadyml() {
for i in ${upimage[@]}
do
# 获取新的镜像所在的yml文件名，以及yml文件中服务名称
  fileyml=`eval grep -l $i $deployerdir"/"*.*ml`
  server=`eval grep $i $fileyml -B1 | head -n 1 | awk '{print $NF}'`
  if [ -n "$fileyml" ] && [ -n "${server%:}" ] 
    then
# 使用新导入并替换的镜像重新load该docker
    echo "docker-compose -f "$fileyml" up -d "${server%:}""
    docker-compose -f $fileyml up -d ${server%:}
    docker-compose -f $fileyml ps ${server%:}
    echo
  else
    echo "重启失败，没有找到被修改的YML文件 ......... 或者加载的docker 模块目前不存在yml中"
    echo 
  fi
done
}

ifloadfile() {
echo
read -p "是否需要导入sql文件，如果是请输入 y|Y ,不需要导入请输入任意键 " inputsql
echo 
if [[ $inputsql == "y" ]] || [[ $inputsql == "Y" ]]
then
  loadsqlfile
fi
}
# 导入alter.yml文件的内容，并替换

replicayml(){
echo "正在准备替换alter.yml文件的内容"
echo
if [ -f alter.*ml ]
then
    spacewc=`grep image alter.*ml -B 2| grep -E "^$" | wc -l`
    imagewc=`grep image alter.*ml | wc -l`
    if [[ ! $spacewc -eq $imagewc ]]
      then
        echo -e "alter.yml文件每个服务必须以空行分段，并且\033[35m空行不能有空格\033[0m"
        echo -e "第一个服务段上面也必须有空行"
        echo -e "exit...................."
        exit 0
          
    fi
    if [[ ! -d "$deployerdir/backup" ]]
    then
      mkdir $deployerdir/backup
    fi
# 获取需要替换的compose.yml文件的服务名称
svnamelist=`grep image alter.*ml -B1 | grep -v -E "image|^-" | awk '{print $NF}'`
cpid=1
for svname in $svnamelist
do
# 获取该名称在使用中的yml文件   名称  与  对应行号
ymlname=`eval grep -l $svname $deployerdir/*.*ml`
startline=`cat -n $ymlname  | grep $svname$ | awk '{print $1}'`
startline=`expr $startline - 1 `
# 检查即将修改的yml文件格式是否正确
spaceline=`grep image $ymlname -B2 | grep -E "^$|^[[:space:]]+$" | wc -l`
spaceline=`expr $spaceline + 1`
imageline=`grep image $ymlname | wc -l`
if [ $spaceline -ge $imageline ]
 then
 # 备份后删除该模块在使用中的yml信息
   if [ $cpid -eq 1 ]
   then
     echo "原yml文件 $ymlname "
     echo "已备份至  $deployerdir/backup/${ymlname##*/}-`date +"%Y%m%d-%H%M%S"`"
     echo
     cp $ymlname $deployerdir/backup/${ymlname##*/}-`date +"%Y%m%d-%H%M%S"`
     let cpid++
   fi
   sed -i "/${svname}$/,/^$/d" $ymlname
 # 获取即将更新的yml文件中模块的信息
   rm -f tmpfile.txt
   sed -n "/${svname}/,/^$/p" alter.*ml > tmpfile.txt
 # 将该信息插入到原始位置
   sed -i "${startline} r tmpfile.txt" $ymlname
   if [ $? = 0 ] 
     then
       echo -e "  $svname  yml更新   \033[35mfinish\033[0m  "
   fi
 else
   echo -e "正在使用的\033[35m$ymlname\033[0m文件需要符合以下格式，脚本才能正确处理，请修改后再次执行"
   echo -e "文件\033[35m$ymlname\033[0m有镜像 $imageline 个，分割的空行只有 $spaceline 个"
   echo "yml文件的每个服务开始或者结束都必须有一个空行，比如"
   echo "
 
   mysql:
     image: docker-reg.emotibot.com.cn:55688/mysql
     ......
     container_name: 该行是最后一行，以下必须是空行,并且该空行不能包含有空格
 
   redis:
     image: docker-reg.emotibot.com.cn:55688/redis
     ......
     container_name: 该行是最后一行，以下必须是空行
 
   sorl:
     image: docker-reg.emotibot.com.cn:55688/redis
     ......
     container_name: 该行是最后一行，以下必须是空行
   
 "
   echo "exit ........"
   exit 0
echo
fi
done
else
  echo "未发现alter.yml文件"
fi
}

replicayml
resetyml
ifloadfile
reloadyml

#curl 'http://127.0.0.1:14501/manual_business?app_id=csbot&type=other' 


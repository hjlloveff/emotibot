DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
rm -rf $DIR/tde_data
mkdir -p $DIR/tde_data
wget http://nas-sh.emotibot.com.cn:50018/foxconn/FOXCONN_TDE/tde_0723.zip -O tde.zip
mv tde.zip $DIR/tde_data
cd $DIR/tde_data && unzip tde.zip && rm tde.zip

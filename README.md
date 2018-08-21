# 说明

此说明文件为all in one 的布署步骤详细说明：

部属详细說明wiki: http://wiki.emotibot.com/pages/viewpage.action?pageId=9570764

版本更新wiki: http://wiki.emotibot.com/pages/viewpage.action?pageId=9569886

# 布属步骤


#### 初始化部属(db 重新init)

    1. cd docker-compose

    2. ./deploy.sh

    3. 3-1

#### 重开或启动单一docker

    1. cd docker-compose

    2. ./restart.sh {module name}


# 测试

1. 连到admin-ui(port 80)确认正常显示，预设帐密csbotadmin/csbot@1

2. 使用test脚本确认个模组正常(test-ans为参考输出结果)

    ./test

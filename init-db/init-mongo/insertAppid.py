#!/usr/bin/python
#coding:utf-8
import requests
import json
import sys, getopt
import time

#shadow url
dalurl = sys.argv[2]
#aws url
#dalurl = 'http://52.80.146.132:8885/dal'
payload = {}
payload.update(
    {
	    "op": "insert",
	    "category": "app",
	    "appid": 'template_hr'
    }
)
# 删除模板appid下的所有扩写，回答，问题

appid = sys.argv[1]
payload['appid'] = appid
ret = requests.post(dalurl, json=payload)
if ret.status_code == 200 :
    result = json.loads(ret.text)
    print result
    if result['errno'] != 'OK' :
	print '创建机器人模板', appid, '失败'
    else :
	print '创建机器人模板', appid, '成功'
else :
    print '创建机器人失败'

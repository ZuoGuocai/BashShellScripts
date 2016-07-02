#-*- coding: utf-8-*-

# data.txt to  Result.xls

#  I get data.txt   from linux system using ftp ,it's a  text file in utf-8 Charset. 

#  But I want to convert it to excel file  in Windows.So I coding the following words.

# In python, must pay attention to use Chinese character.

#I execute  this program  in Windows 10 with python2.7  environment,It‘s can be work.

'''
source data:

左大神,146512199546120112,C90110,CN901,C9851,18735501478,北京市海淀区颐和园路
左大神,146512199546120112,C90110,CN901,C9851,18735501478,北京市海淀区颐和园路
左大神,146512199546120112,C90110,CN901,C9851,18735501478,北京市海淀区颐和园路
左大神,146512199546120112,C90110,CN901,C9851,18735501478,北京市海淀区颐和园路
马云,146512199546120332,C90110,CN901,C9851,18888888888,杭州湖畔大学
马云,146512199546120332,C90110,CN901,C9851,18888888888,杭州湖畔大学
马云,146512199546120332,C90110,CN901,C9851,18888888888,杭州湖畔大学
马云,146512199546120332,C90110,CN901,C9851,18888888888,杭州湖畔大学

'''

import xlwt
import xlrd
import codecs


f  = codecs.open(r'C:\Users\icai\Desktop\nihao\data.txt','r+','utf-8')
row_list = []
for row in f:
    row_list.append(row.split(",",-1))
column_list = zip(*row_list)
workbook = xlwt.Workbook()
worksheet = workbook.add_sheet('Sheet1')
i = 0 
for column in column_list:
    for item in range(len(column)):
        worksheet.write(item, i, column[item])
    workbook.save('Result.xls')
    i+=1
f.close

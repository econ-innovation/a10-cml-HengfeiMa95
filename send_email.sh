#!/bin/bash

# 设置收件人邮箱地址
recipient="mahengfei95@163.com"

# 设置发件人邮箱地址
sender="925233975@qq.com"

# 设置发件人显示名称
sender_name="Your Name"

# 设置邮件主题
subject="Test Email from Bash Script"

# 设置邮件内容
body="This is a test email sent from a Bash script using msmtp."

# 发送邮件
echo -e "Subject:$subject\nFrom:\"$sender_name\" <$sender>\n$body" | msmtp -a default $recipient

!/usr/bin/expect

set timeout 30
cd /home/rd/myproject

spawn git pull
expect "Username for 'http://192.168.1.2':"
send "guest\r"
send "\r"

expect "Password for 'http://daniel@192.168.1.2:"
send "guest\r"
send "\r"

sleep 3
interact

##
## call by  'sh test.sh'


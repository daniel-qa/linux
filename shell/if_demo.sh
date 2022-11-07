#!/bin/sh
 
## 每個 element 都要有空白隔開，不然會出錯 
 
# Ex1

if [ "123" = "123" ]
then
    echo "var is 123"
fi


# Ex2
var1="123"
 
if [ "$var1" = "123" ]
then
    echo "var is 123"
fi

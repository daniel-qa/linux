#!/bin/bash

# rsync 遠端備份
# 用法就跟 scp 指令很像，不過 rsync 會更有效率
rsync -av /mypath/myfile.gz pi@192.168.1.12:/mybackup/

rsync 從遠端抓資料
rsync -av  pi@192.168.1.12:/mybackup/  /mypath/myfile.gz 

# 顯示傳輸進度
# 如果要讓 rsync 在傳輸檔案時可以即時顯示進度，可以加上 --progress 參數，或是大寫P：
rsync -avzh --progress pi@192.168.1.12:/mypath/myfile.gz /mybackup/

rsync -avP --progress pi@192.168.1.12:/mypath/myfile.gz /mybackup/

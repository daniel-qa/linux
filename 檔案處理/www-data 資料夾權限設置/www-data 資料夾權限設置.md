## 正規解決方式

首先，將自己添加到組www-data中
```
usermod -a -G www-data (your username)
```
然後，將資料夾群組設定為 www-data
提供讀，寫，enter-directory權限，s標誌將確保在該目錄中創建的任何文件都將提供給 www-data
```
chgrp www-data /home/myuser/folderA
chmod g+rwxs /home/myuser/folderA
```

## Docker 環境下的權限問題
* 文件被創建時，cli 模式和 php-fpm 模式運行的用戶不一致
* cli 模式下創建的文件用戶權限為 root , 
* php-fpm 模式創建的文件用戶權限為 1000
* 

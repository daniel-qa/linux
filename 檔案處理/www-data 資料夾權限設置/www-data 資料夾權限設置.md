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
```
 文件被創建時，cli 模式和 php-fpm 模式運行的用戶不一致
 cli 模式下創建的文件用戶權限為 root , 
 php-fpm 模式創建的文件用戶權限為 1000
 
 php-fpm 主進程是 root 用戶，php腳本的執行是子進程執行的，
 而子進程是 www-data 用戶
 (docker 要求子進程用戶要低於root用戶)
```
 
 ### 解決方法
 
 * 讓 cli 模式下和 php-fpm模式創建下的文件用戶權限一致。
 ```
 宿主創創建一個 www-data 用戶組和 www-data 用戶，將此用戶暈射到 docker 容器裡。
 
 docker run -u www-data:www-data
 
 或者在 docker-compose.yml 的配置如下:
  ```
 docker-compose
 ```
 ```

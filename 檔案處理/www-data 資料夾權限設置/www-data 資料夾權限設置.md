## 正規解決方式

首先，將自己添加到組www-data中
```
usermod -a -G www-data (your username)
```
然後：
```
chgrp www-data /home/myuser/folderA
chmod g+rwxs /home/myuser/folderA
```

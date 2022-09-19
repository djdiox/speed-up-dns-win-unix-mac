# speed-up-dns-win-unix-mac

> Sets Cloudflare & Google DNS via CMD/Shell

## How to run?

For normal unix/macos run bash and execute `sudo sh ./unix-mac-set-config.sh`. Make sure you are root

For Windows Environment run cmd and execute `./win.cmd`. Make Sure to open CMD with Administrator Rights

```sh
# in unix run sh sudo ./unix-mac-copy-config.sh 
# or edit /etc/resolve.conf and set:
nameserver 1.1.1.1
nameserver 8.8.8.8
```

```sh
# for wsl run sudo sh wsl.sh (before changing resolve.conf)
# or edit /etc/wsl.conf and set:
[network]
generateResolvConf = false
```
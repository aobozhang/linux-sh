# linux-sh
sh for daily linux use. eg. mem calc

## USAGE

### mem.sh
```
git clone https://github.com/aobozhang/linux-sh.git
cd linux-sh
chmod +x mem.sh
ln -s /full/path/to/mem.sh /usr/local/bin/mem

mem [keyword]
```

__example__


```
[root@host linux-sh]# mem mysql

Total:  18.457Mb 474.285kb
================================================================================
 1750 mysqld          /usr/local/mysql/bin/mysqld  0.0 18896 370280 Feb08 mysql     1000
  811 mysqld_safe     /bin/sh /usr/local/mysql/bi  0.0     4 115388 Feb08 root         0
[root@host linux-sh]#

```

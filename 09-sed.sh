#!/bin/bash

## Editor does what ?
# 1. Delete the content  (d)
# 2. Search & Replace (substitute)   (s)
# 3. Adding  content , replace content (i , a & c)

# awk '{print $1}' -> print is an internal command of awk

# Criteria
# 1. Line Numbers
# 2. Word(s)

# Options
# -i -> It actually edits the file
# with out -i , it always print changes on screen
# Multiple command can be given with -e option
# Ex : sed -e '1d' -e '2d' passwd

# BOOK : https://www.thegeekstuff.com/sed-awk-101-hacks-ebook/

<<EOF
[ root@ip-172-31-21-178 ~ ]# cat passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# head -5 /etc/passwd >passwd
[ root@ip-172-31-21-178 ~ ]# cat passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed '1d' passwd
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# cat passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e '1d' -e '2d' passwd
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -i -e '1d' -e '2d' passwd
[ root@ip-172-31-21-178 ~ ]# cat passwd
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# head -5 /etc/passwd >passwd
[ root@ip-172-31-21-178 ~ ]# cat passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# ^C
[ root@ip-172-31-21-178 ~ ]#
[ root@ip-172-31-21-178 ~ ]#
[ root@ip-172-31-21-178 ~ ]# sed -e '/root/ d' passwd
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]#
[ root@ip-172-31-21-178 ~ ]#
[ root@ip-172-31-21-178 ~ ]# sed -e 's/nologin/yeslogin/' passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/yeslogin
daemon:x:2:2:daemon:/sbin:/sbin/yeslogin
adm:x:3:4:adm:/var/adm:/sbin/yeslogin
lp:x:4:7:lp:/var/spool/lpd:/sbin/yeslogin
[ root@ip-172-31-21-178 ~ ]# sed -e 's/root/ROOT/' passwd
ROOT:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e 's/root/ROOT/g' passwd
ROOT:x:0:0:ROOT:/ROOT:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e 's/root/ROOT/gi' passwd
ROOT:x:0:0:ROOT:/ROOT:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e '1 i helo world' passwd
helo world
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e '1 a helo world' passwd
root:x:0:0:root:/root:/bin/bash
helo world
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e '/root/ a helo world' passwd
root:x:0:0:root:/root:/bin/bash
helo world
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]# sed -e '/root/ c helo world' passwd
helo world
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
[ root@ip-172-31-21-178 ~ ]#
EOF
log:V:
	>/sys/log/9bbs
	chmod +aw /sys/log/9bbs
	cp tcp666 /rc/bin/service

perms:V:
	for(i in `{du -a etc/users etc/rooms rooms | sed 's/^.*	//g'}){
		chgrp none $i
		chmod g+w $i
	}

web:V:
	if(test -f 9bbs.tgz)
		rm 9bbs.tgz
	cd ..
	tar zcvf /tmp/9bbs.tgz 9bbs
	cd 9bbs
	cp /tmp/9bbs.tgz ../src/
	rm /tmp/9bbs.tgz

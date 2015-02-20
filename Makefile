PREFIX=/usr/local

all:
	echo "nothing to build here"

install:
	install -m 755 zramswap-stat.sh ${PREFIX}/bin/
	install -m 755 zramswap-start.sh ${PREFIX}/sbin/
	install -m 755 zramswap-stop.sh ${PREFIX}/sbin/
	n=/etc/default/zramswap ; test -e $$n || install -m 644 zramswap.conf $$n

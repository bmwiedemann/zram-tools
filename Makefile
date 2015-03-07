PREFIX=/usr/local

all:
	echo "nothing to build here"

install:
	install -D -m 755 zramswap-stat.sh ${DEST_DIR}${PREFIX}/bin/zramswap-stat
	install -D -m 755 zramswap-start.sh ${DEST_DIR}${PREFIX}/sbin/zramswap-start
	install -D -m 755 zramswap-stop.sh ${DEST_DIR}${PREFIX}/sbin/zramswap-stop
	n=${DEST_DIR}/etc/default/zramswap ; test -e $$n || install -D -m 644 zramswap.conf $$n

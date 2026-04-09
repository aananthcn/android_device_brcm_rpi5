#!/vendor/bin/sh

sleep 10

/system/bin/ip addr flush dev eth0
/system/bin/ip addr add 192.168.10.20/24 dev eth0
/system/bin/ip link set eth0 up
/system/bin/ip route show default | /system/bin/grep -q default || \
/system/bin/ip route add default via 192.168.10.1
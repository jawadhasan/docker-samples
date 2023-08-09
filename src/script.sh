#!/bin/bash
echo "executing BASH...."

PORT_NO=502

PUBLIC_IPADDR="10.50.1.202"
#PUBLIC_IPADDR=$(hostname -I)
echo "SERVER PUBLIC-IP = ${PUBLIC_IPADDR}"

for i in {1..10}
do
   echo "Setup PREROUTING on PORT: $PORT_NO "
   sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport $PORT_NO -j DNAT --to ${PUBLIC_IPADDR}:$PORT_NO

   echo "Setup FORWARD on PORT: $PORT_NO "
   sudo iptables -A FORWARD -p tcp -d ${PUBLIC_IPADDR} --dport $PORT_NO -j ACCEPT

   ((PORT_NO++))
done

echo "Finishe executing BASH...."

#!/bin/bash

for ip in 192.168.1.{1..255}
do
  ping -c1 -W1 $ip | grep "1 received" | cut -d " " -f 4 | tr -d ":" &
done

#!/bin/bash
PWD= pwd
RED='\033[0;31m'
NC='\033[0m'
printf "Install ${RED}BPMonitor${NC} version 0.0.0?"
echo ""
read input
if [ "$input" == y ]; then
cd "${PWD}"
chmod 755 bpm
sudo rm //usr/bin/bpm
sudo cp bpm /usr/bin
echo '-------------------------------'
echo 'make sure to apt-get install python-numpy python-psutil'
echo ''
echo 'bpmonitor successfully installed'
exit 0
else
echo 'quit'
exit 1
fi

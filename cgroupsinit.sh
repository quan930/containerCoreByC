# Mount Kernel Virtual File Systems
# 容器名
CONNAME=$1
#需要限制的线程
CONPID=$2
MEMMAX=$3

#echo "name:$CONNAME"
#echo "pid:$CONPID"
#mkidr
mkdir /sys/fs/cgroup/memory/"$CONNAME"

echo "$CONPID" > /sys/fs/cgroup/memory/"$CONNAME"/tasks
echo "$MEMMAX" > /sys/fs/cgroup/memory/"$CONNAME"/memory.limit_in_bytes
# Mount Kernel Virtual File Systems
# 容器名
CONNAME=$1
CONPID1=$2
#CONPID2=$3


#echo "name:$CONNAME"
#echo "pid:$CONPID"
#mkidr
mkdir /sys/fs/cgroup/memory/"$CONNAME"

echo "$CONPID1" > /sys/fs/cgroup/memory/"$CONNAME"/tasks
echo 314572800 > /sys/fs/cgroup/memory/"$CONNAME"/memory.limit_in_bytes
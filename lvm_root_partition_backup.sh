lvremove /dev/slack/rootsnapshot
lvcreate -l 100%FREE -s -n rootsnapshot /dev/slack/root
mount /dev/slack/rootsnapshot /snapshoot/
tar -pczf /rootbackup/root_snapshot_17_oct_2016.tar.gz /snapshoot/
umount /snapshoot/

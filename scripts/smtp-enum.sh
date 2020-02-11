#!/bin/bash
for user in $(cat users.txt); dp echo VRFY $user |nc -nv -w 1 TargetIP 25 2>/dev/null |grep ^"250";done
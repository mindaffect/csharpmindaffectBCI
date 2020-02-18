#!/bin/bash
cd `dirname ${BASH_SOURCE[0]}`
# start the server, in the background
../../java/fakerecogniser/startFakeRecog.sh &
serverpid=$!
echo ServerPID $serverpid

# start the fake presenation system
sleep .5
mono --debug bin/mindaffectBCI.exe
prespid=$!

sleep $time
kill ${prespid}
kill ${serverpid}

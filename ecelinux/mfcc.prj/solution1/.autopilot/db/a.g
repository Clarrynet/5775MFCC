#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/drl224/ece5775/final/ecelinux/mfcc.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}

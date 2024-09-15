#!/bin/bash
# shellcheck shell=bash

CWD=$(pwd)/..
TargetModule=rv32_cpu_tb
iverilog -g2012 -s $TargetModule \
    -o $CWD/simulation/out.vvp \
    -I $CWD/user/src \
    $CWD/user/sim/$TargetModule.v >$CWD/simulation/sim.txt
vvp -n $CWD/simulation/out.vvp >>$CWD/simulation/sim.txt
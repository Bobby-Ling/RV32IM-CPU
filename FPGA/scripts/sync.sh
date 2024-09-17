#!/bin/bash
# shellcheck shell=bash
pushd .
cd ../user/src || exit
python ../../scripts/Pipelined-CPU-Generator/generate_pipelines.py || exit
popd || exit

cp -rf ../user/src/templates ./Pipelined-CPU-Generator/
cp -f ../user/src/include/PipelineStageWireDefs.vh ./Pipelined-CPU-Generator/include
cd ./Pipelined-CPU-Generator || exit
python generate_pipelines.py || exit
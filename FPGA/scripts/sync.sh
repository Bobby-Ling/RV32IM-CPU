#!/bin/bash
# shellcheck shell=bash

# Pipelined-CPU-Generator
pushd . && cd ../user/src || exit
python ../../scripts/Pipelined-CPU-Generator/generate_pipelines.py || exit
popd || exit

cp -rf ../user/src/templates/PipelineInterface* ./Pipelined-CPU-Generator/templates
cp -f ../user/src/include/PipelineStageWireDefs.vh ./Pipelined-CPU-Generator/include

pushd . && cd ./Pipelined-CPU-Generator || exit
python generate_pipelines.py || exit
popd || exit


# Controller-Generator
cp -f '../user/data/RISC-V单周期硬布线控制器表达式自动生成(2024-9-12)-RV32IM-FullOpcode.xlsx' ./Controller-Generator

pushd . && cd ../user/src || exit
python ../../scripts/Controller-Generator/generate_controller.py '../data/RISC-V单周期硬布线控制器表达式自动生成(2024-9-12)-RV32IM-FullOpcode.xlsx' || exit
popd || exit

cp -rf ../user/src/templates/Controller* ./Controller-Generator/templates

pushd . && cd ./Controller-Generator || exit
python generate_controller.py || exit
popd || exit

#!/usr/bin/env bash
set -e
verilator LEGz_V3.v --cc -Wno-WIDTH -Wno-SELRANGE -Ibuiltin_components -I"custom_components" --exe ./TC_Universe.cpp "$@"
cd obj_dir
make -f VLEGz_V3.mk 
cp VLEGz_V3 ../.
cd ..

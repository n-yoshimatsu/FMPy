#!/bin/sh

FMU_DIR="/home/nyoshimatsu/work/fmi/Reference-FMUs/build/dist"

echo "python -m fmpy --fmi-logging simulate ${FMU_DIR}/Clocks.fmu"

python -m fmpy --fmi-logging simulate ${FMU_DIR}/Clocks.fmu



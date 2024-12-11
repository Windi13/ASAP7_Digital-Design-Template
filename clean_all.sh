#!/bin/bash

# =====================================================
# Author: Simon Dorrer
# Last Modified: 05.12.2024
# Description: This .sh file cleans all generated files from run_all.sh.
# =====================================================

set -e -x

cd $(dirname "$0")

VERILOG=${VERILOG:-verilog/rtl}
ORFS=${ORFS:-orfs}
XSPICE=${XSPICE:-xspice}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Clean vhdl2verilog
cd "$VERILOG"
rm -rf build
rm -f *.o
cd "$SCRIPT_DIR"

# Clean ORFS
cd "$ORFS"/flow
make nuke
cd "$SCRIPT_DIR"

# Finish
echo "------ The cleaning was successful! ------"
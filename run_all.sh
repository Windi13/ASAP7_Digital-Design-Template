#!/bin/bash

# =====================================================
# Author: Simon Dorrer
# Last Modified: 05.12.2024
# Description: This .sh file runs all self-written shell scripts (vhdl2verilog, run_orfs) for the given folder structure.
# =====================================================

set -e -x

cd $(dirname "$0")

VERILOG=${VERILOG:-verilog/rtl}
ORFS=${ORFS:-orfs}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Run "vhdl2verilog.sh"
cd "$VERILOG"
./vhdl2verilog.sh
cd "$SCRIPT_DIR"

# Run "run_orfs.sh"
cd "$ORFS"
./run_orfs.sh
cd "$SCRIPT_DIR"

# Finish
echo "------ The complete flow was successful! ------"
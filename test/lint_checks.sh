#!/bin/bash

# Point to the linter directly if not added to bashrc
LINTER=oclint

BASE_PATH=../src

# Settings for oclint
ARGS="-enable-clang-static-analyzer -enable-global-analysis"

# Using continue or multiple returns is less preferable
RULES="-disable-rule PreferEarlyExit"

# Source files to check
SOURCES="$BASE_PATH/electricui.c"
SOURCES="$SOURCES $BASE_PATH/transports/eui_serial_transport.c"
SOURCES="$SOURCES $BASE_PATH/utilities/eui_crc.c"
SOURCES="$SOURCES $BASE_PATH/utilities/eui_offset_validation.c"


# Run the linter with loaded arguments etc
$LINTER $ARGS $RULES $SOURCES -- -c

#!/bin/bash

# Copyright (C) 2018-2024 Intel Corporation
# SPDX-License-Identifier: Apache-2.0

# Set OpenVINO environment variables
export INTEL_OPENVINO_DIR=/opt/intel/openvino
export PATH=$INTEL_OPENVINO_DIR/bin:$PATH
export LD_LIBRARY_PATH=$INTEL_OPENVINO_DIR/lib:$LD_LIBRARY_PATH

# Print a message indicating that the environment has been set up
echo "OpenVINO environment variables are set."
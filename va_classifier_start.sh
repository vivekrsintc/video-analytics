#!/bin/bash

source /opt/intel/openvino/bin/setupvars.sh

udevadm control --reload-rules
udevadm trigger

# FPGA environment
source ~/fpga_env.sh

# Adding path of libcpu_extension.so to LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GO_WORK_DIR/common/udfs/native/build/ie_cpu_extension

./VideoAnalytics/build/video-analytics

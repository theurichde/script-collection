#!/bin/bash

####################################################################
# This script will reset the IntelliJ IDEA 2016 Evaluation Period. #
####################################################################

echo "removing evaluation key"
rm -v ~/.IntelliJIdea*/config/eval/*.evaluation.key

find ~/.java -iname '*evlsprt*' | xargs rm -rfv

echo "resetting evalsprt in options.xml"
sed -i '/evlsprt/d' ~/.IntelliJIdea*/config/options/options.xml

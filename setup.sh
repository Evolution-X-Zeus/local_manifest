#!/bin/bash
set -e

source "build/envsetup.sh";
source "vendor/lineage/build/envsetup.sh";

# hardware/qcom-caf/sm8450/audio/pal
changes=(
#424480 # Implement ultrasound notify msg support
#425541 # Implement speaker protection profiles
)
#repopick -f -P hardware/qcom-caf/sm8450/audio/pal ${changes[@]}&

# hardware/qcom-caf/sm8450/audio/primary-hal
changes=(
#430997 # UltrasoundProximity: Implement ramp down support
)
#repopick -f -P hardware/qcom-caf/sm8450/audio/primary-hal ${changes[@]}&

wait

#!/usr/bin/env bash
set -euo pipefail
# Extra safety installer in case of failure.
# Runs automatically; however, use manually if needed.

ML_Core="https://github.com/hpcc-systems/ML_Core.git"
PBblas="https://github.com/hpcc-systems/PBblas.git"
LearningTrees="https://github.com/hpcc-systems/LearningTrees.git"
DataPatterns="https://github.com/hpcc-systems/DataPatterns.git"
Visualizer="https://github.com/hpcc-systems/Visualizer.git"

ecl bundle install $ML_Core
ecl bundle install $PBblas
ecl bundle install $LearningTrees
ecl bundle install $DataPatterns
ecl bundle install $Visualizer

echo "All bundles installed"

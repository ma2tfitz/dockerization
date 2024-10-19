#!/bin/bash
set -euo pipefail
module purge
module load Apptainer
TAG="bcl-convert-4.2.7"
apptainer build --fix-perms bcl-convert.sif docker-archive://${TAG}.tar

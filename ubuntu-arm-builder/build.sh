#!/bin/bash
set -euo pipefail

readonly arch=$(arch)
docker build --tag georgesapkin/arm -f Dockerfile.$arch .

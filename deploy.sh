#!/usr/bin/env bash

# exit when any command fails
set -e

kubectl patch deployment hello-world-app -p "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"$(date +%s)\"}}}}}"

exit 0

#!/bin/sh

# shellcheck source=/dev/null
. "$(dirname "$0")/include/functions.sh"

check_stack_start

print_heading "check for presence of external network"

CONTAINER_ID="$(docker compose ps -q zammad-elasticsearch)"

docker inspect "$CONTAINER_ID" | grep zammad-ci-external-network

print_heading "Success - external network is present"

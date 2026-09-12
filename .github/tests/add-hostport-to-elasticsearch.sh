#!/bin/sh

# shellcheck source=/dev/null
. "$(dirname "$0")/include/functions.sh"

check_stack_start

print_heading "check for hostport"

CONTAINER_ID="$(docker compose ps -q zammad-elasticsearch)"

docker inspect "$CONTAINER_ID" | grep HostPort | grep 9201

print_heading "Success - hostport is present"

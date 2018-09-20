#!/usr/bin/env bash
# Test docs build, grammar, and links in a docker container

set -e

: ${DOC_IMG:=f5devcentral/containthedocs:latest}

RUN_ARGS=( \
  --rm
  -i
  -v $PWD:/wkdir
  ${DOCKER_RUN_ARGS}
)

# Run the container using the provided args
# DO NOT SET -x BEFORE THIS, WE NEED TO KEEP THE CREDENTIALS OUT OF THE LOGS
docker run "${RUN_ARGS[@]}" ${DOC_IMG} /bin/sh -s <<EOF
set -x
set -e

echo -e "Building docs with Sphinx ... \n"
make docs

echo -e "Checking links\n"
make linkcheck || true

echo "Checking grammar and style"

vale --glob='*.{md,rst}' . || true

EOF

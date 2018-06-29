#!/usr/bin/env bash
# Runs a Docker container with the AWS credentials passed in as environment variables
# Uses scripts built in to the f5devcentral/containthedocs image to deploy docs to
# AWS S3

# Don't set -x
# we need to keep the secret AWS variables out of the logs

exec docker run --rm -i -v $PWD:$PWD --workdir $PWD -e  AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_S3_BUCKET=$AWS_S3_BUCKET f5devcentral/containthedocs /bin/bash -s <<EOF

publish-product-docs-to-prod agc v3.0
aws cloudfront create-invalidation --distribution-id $AWS_DIST_ID --paths /products/agc/v3.0/

EOF

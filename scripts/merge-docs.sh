#!/usr/bin/env bash
# Merge docs from individual topic directories into /source
# Run this script before building docs with sphinx

set -x

# Clear out any artifacts from previous builds
make source-cleanup

# Copy docs to source directory
cp -R ./saml-idp-connector/docs ./docs/source/saml-idp-connector/
cp -R ./saml-saas-applications/docs ./docs/source/saml-saas-applications/

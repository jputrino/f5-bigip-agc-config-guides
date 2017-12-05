#!/usr/bin/env bash
# Test docs build, grammar, and links
# can be run standalone or with docker-docs.sh

set -e

echo -e "Building docs with Sphinx ... \n"
make docs

echo -e "Checking links\n"
make linkcheck || true

echo -e "Renaming doc files using camel-case for grammar check\n"
set -x
# Rename doc files using camel-case (required for write-good grammar check)
rename -e 'y/\ /_/' source/saml-idp-connector/*.rst
rename -e 'y/\ /_/' source/saml-saas-applications/*.rst

echo "Checking grammar and style"

write-good `find docs/source -iname '*.rst'` --passive --so --no-illusion --thereIs --cliches


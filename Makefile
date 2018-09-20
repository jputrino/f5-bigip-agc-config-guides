# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = python -msphinx
SPHINXPROJ    = BIG-IP_AGC_ConfigGuides
SOURCEDIR     = docs/source
BUILDDIR      = docs/_build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# clean up the source directory
.PHONY: source-cleanup
source-cleanup:
	rm -rf $(SOURCEDIR)/saml-*

# combine docs into /source and build
.PHONY: docs
docs:
	rm -rf $(BUILDDIR)
	./scripts/merge-docs.sh
	make html

# build live preview of docs locally
.PHONY: livedocs
livedocs:
	./scripts/merge-docs.sh
	@echo "Running sphinx autobuild. View live edits at:"
	@echo "  http://0.0.0.0:8000"
	@echo ""
	sphinx-autobuild --host 0.0.0.0 -b html $(SOURCEDIR) $(BUILDDIR)/html

# run docs quality tests in a docker container
.PHONY: testdocs
testdocs:
	rm -rf $(BUILDDIR)
	./scripts/test-docs.sh

# one-time html build using a docker container
.PHONY: docker-docs
docker-docs:
	rm -rf $(BUILDDIR)
	./scripts/docker-docs.sh make docs

# Build live preview of docs in a docker container
.PHONY: docker-livedocs
docker-livedocs:
	rm -rf $(BUILDDIR)
	DOCKER_RUN_ARGS="-p 127.0.0.1:8000:8000" \
		./scripts/docker-docs.sh make livedocs

#!/bin/sh

# automatically reload on file changes to aid in rapid development.
# requires entr.

# watch for changes in program files and rerun
find . -name '*.go' -or -name 'config.yaml' -or -path './static/*' -or -path './templates/*' | entr -r go run .

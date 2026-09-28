#!/bin/bash
# REVAL post-merge probe fixture (own repo, own account). Prints markers only; no network, no secrets.
echo "REVAL ORG CHECK OUTPUT"
echo "REVAL_ORG_CHECK_START"
echo "TS_UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "HEAD_SHA: $(git rev-parse HEAD 2>/dev/null || echo n/a)"
echo "SCRIPT_SHA256: $(shasum -a 256 "$0" | awk '{print $1}')"
echo "PWD: $(pwd)"
echo "UNAME: $(uname -a)"
echo "REVAL_ORG_CHECK_END"

#!/usr/bin/env bash
set -euo pipefail

xmllint --nonet --noout resources/xml/accessory_identity.xml
protoc -I proto --descriptor_set_out=/dev/null proto/attestux/v1/*.proto

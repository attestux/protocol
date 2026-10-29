#!/usr/bin/env bash
set -euo pipefail

xmllint --nonet --noout resources/xml/accessory_identity.xml
find proto -name '*.proto' -exec protoc -I proto --descriptor_set_out=/dev/null {} +

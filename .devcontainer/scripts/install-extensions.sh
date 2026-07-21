#!/usr/bin/env bash
set -euo pipefail
# Extra safety installer in case marketplace IDs above fail or need latest VSIX.
# Not automatically run; use manually if needed.

ECL_URL="https://github.com/hpcc-systems/vscode-ecl/releases/latest/download/hpcc-systems.ecl.vsix"
OJS_URL="https://github.com/GordonSmith/vscode-ojs/releases/latest/download/gordonsmith.observable-js.vsix"

mkdir -p /tmp/vsix
pushd /tmp/vsix >/dev/null
curl -L -o ecl.vsix "$ECL_URL"
curl -L -o ojs.vsix "$OJS_URL"
code --install-extension ecl.vsix || true
code --install-extension ojs.vsix || true
popd >/dev/null

echo "Extensions installed (if code command available)."

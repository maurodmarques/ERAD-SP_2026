#!/usr/bin/env bash
set -euo pipefail

# Start (or restart) the HPCC Systems platform services
if sudo /etc/init.d/hpcc-init status >/dev/null 2>&1; then
  echo "Restarting HPCC Systems platform..."
  sudo /etc/init.d/hpcc-init stop || true
else
  echo "Starting HPCC Systems platform..."
fi
sudo /etc/init.d/hpcc-init start

# Show status
sudo /etc/init.d/hpcc-init status || true

echo "HPCC Systems portal should be accessible on forwarded port 8010."

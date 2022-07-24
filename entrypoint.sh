#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /line_push_bot/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
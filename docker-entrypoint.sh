#!/bin/sh

# Exit on any error
set -e

# Run database migrations (optional but recommended)
crystal src/invidious.cr -D migrate

# Start Invidious
exec crystal src/invidious.cr

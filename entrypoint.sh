#!/bin/bash
set -e

rm -f /unipaas/tmp/pids/server.pid

exec "$@"
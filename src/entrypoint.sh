#!/bin/sh
# TOS wrapper: the upstream start script edits users, chowns volumes and su's
# to squeezeboxserver. Run the LMS perl server directly as uid 1000.
set -u
set -e
mkdir -p /config/prefs /config/logs /config/cache
exec perl /lms/slimserver.pl --prefsdir /config/prefs \
  --logdir /config/logs --cachedir /config/cache --httpport 9000

#! /bin/sh

# Taken from http://wiki.openstreetmap.org/wiki/Nominatim/Installation
cat >> ${PGDATA}/postgresql.conf <<EOF
max_connections = 512
shared_buffers = 1GB
maintenance_work_mem = 5GB
work_mem = 25MB
effective_cache_size = 12GB
synchronous_commit = off
max_wal_size = 4800MB
checkpoint_timeout = 10min
checkpoint_completion_target = 0.9
fsync = off
full_page_writes = off
EOF

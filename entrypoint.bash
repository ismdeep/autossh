#!/usr/bin/env bash

set -eux

autossh -N \
    -o "ServerAliveInterval 60" \
    -o "ServerAliveCountMax 3" \
    -R ${REMOTE_ADDR}:${LOCAL_ADDR} \
    ${SSH_USER}@${SSH_HOST} -p ${SSH_PORT}
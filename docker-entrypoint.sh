#!/bin/sh

set -e

for i in "sockd.conf" "passwd" "group" "shadow" "login.defs"; do
    if [ ! -f "/etc/${i}" ]; then
        cp "/conf/${i}" "/etc/${i}"
    fi
done

exec "$@"

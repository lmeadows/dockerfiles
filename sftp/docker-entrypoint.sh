#!/bin/sh

if [ -z "$USER" ]; then
  echo >&2 'Please set an USER variable (ie.: -e USER=john).'
  exit 1
fi

# Checks for PASS variable
if [ -z "$PASS" ]; then
  echo >&2 'Please set a PASS variable (ie.: -e PASS=hackme).'
  exit 1
fi

echo "Creating user ${USER}"
adduser -D ${USER}
echo "${USER}:${PASS}" | chpasswd
echo "Fixing permissions for user ${USER}"
chown -R ${USER}:${USER} /home/${USER}
exec "$@"


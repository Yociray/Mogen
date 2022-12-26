#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e269565e-be10-4bd7-b132-83bc2f79ada5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


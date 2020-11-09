#!/bin/sh

if [ ! -z "$REACT_APP_API" ]; then
  files=$(egrep -lir --include=*.js "https://haystack-demo-api.deepset.ai" /usr/share/nginx/html/)
  for file in $files; do
    sed -i "s|https://haystack-demo-api.deepset.ai|$REACT_APP_API|g" $file
  done
fi

exec /haystack-entrypoint.sh "$@"

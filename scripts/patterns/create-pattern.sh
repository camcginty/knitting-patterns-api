#!/bin/bash

curl "http://localhost:4741/patterns" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pattern": {
      "title": "'"${TITLE}"'",
      "x": "'"${X}"'",
      "y": "'"${Y}"'"
    }
  }'

echo

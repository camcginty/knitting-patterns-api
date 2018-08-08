#!/bin/bash

curl "http://localhost:4741/patterns/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "title": "'"${TITLE}"'"
    }
  }'

echo

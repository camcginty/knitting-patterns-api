#!/bin/bash

curl "http://localhost:4741/squares/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "square": {
      "on": "'"${ON}"'"
    }
  }'

echo

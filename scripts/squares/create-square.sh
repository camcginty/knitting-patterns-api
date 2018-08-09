#!/bin/bash

curl "http://localhost:4741/squares" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "square": {
      "on": "'"${FALSE}"'"
    }
  }'

echo

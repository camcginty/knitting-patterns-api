#!/bin/bash

curl "http://localhost:4741/squares" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

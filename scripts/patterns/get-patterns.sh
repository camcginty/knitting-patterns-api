#!/bin/bash

curl "http://localhost:4741/patterns" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

#!/bin/bash

curl "http://localhost:4741/users" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

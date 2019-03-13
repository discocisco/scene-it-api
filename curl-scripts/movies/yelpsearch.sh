#!/bin/bash

curl "http://localhost:4741/find-theater" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "search": "'"${SEARCH}"'"
  }'

echo

#!/bin/bash

curl "http://localhost:4741/search-movie" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "search": "'"${SEARCH}"'"
  }'

echo

#!/bin/bash

curl "http://localhost:4741/favorites" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo

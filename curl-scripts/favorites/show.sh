#!/bin/bash

curl "http://localhost:4741/favorites/${ID}" \
  --include \
  --request GET \

echo

#!/bin/bash

curl "http://localhost:4741/favorites/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite": {
      "movie_id": "'"${MOVIE_ID}"'",
      "comment": "'"${COMMENT}"'"
    }
  }'

echo

#!/bin/bash

curl "http://localhost:4741/favorites" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite": {
      "movie_id": "'"${MOVIE_ID}"'",
      "comment": "'"${COMMENT}"'"
    }
  }'

echo

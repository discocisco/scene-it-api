#!/bin/bash

curl "http://localhost:4741/reviews/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "review": {
      "movie_id": "'"${MOVIE_ID}"'",
      "text_body": "'"${TEXT_BODY}"'"
    }
  }'

echo

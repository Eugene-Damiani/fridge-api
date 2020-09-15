#!/bin/bash

curl "https://tranquil-crag-61634.herokuapp.com/businesses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "business": {
      "name": "'"${NAME}"'",
      "address": "'"${ADDRESS}"'",
      "state": "'"${STATE}"'",
      "zipCode": "'"${ZIPCODE}"'"
    }
  }'

echo

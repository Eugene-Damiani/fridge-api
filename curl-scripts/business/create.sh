#!/bin/bash

curl "http://localhost:4741/businesses" \
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

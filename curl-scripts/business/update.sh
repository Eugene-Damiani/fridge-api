#!/bin/bash

curl "https://stark-falls-98169.herokuapp.com/businesses/${ID}"\
  --include \
  --request PATCH \
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

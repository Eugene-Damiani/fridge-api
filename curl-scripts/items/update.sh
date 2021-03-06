#!/bin/bash

curl "https://tranquil-crag-61634.herokuapp.com/items/${ID}"\
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "item": {
    "name": "'"${NAME}"'",
    "quantity": "'"${QUANTITY}"'",
    "price": "'"${PRICE}"'"
    }
  }'

echo

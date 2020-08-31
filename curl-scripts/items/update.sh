#!/bin/bash

curl "https://stark-falls-98169.herokuapp.com/items/${ID}"\
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

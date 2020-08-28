#!/bin/bash

curl "https://stark-falls-98169.herokuapp.com/items/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

#!/bin/bash

curl "https://tranquil-crag-61634.herokuapp.com/items/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

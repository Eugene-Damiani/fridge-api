#!/bin/sh

curl "https://tranquil-crag-61634.herokuapp.com/items/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

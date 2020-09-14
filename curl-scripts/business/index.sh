#!/bin/sh

curl "https://tranquil-crag-61634.herokuapp.com/businesses/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

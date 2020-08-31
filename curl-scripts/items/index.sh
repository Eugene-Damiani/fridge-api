#!/bin/sh

curl "https://stark-falls-98169.herokuapp.com/items/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

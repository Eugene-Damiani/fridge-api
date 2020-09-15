#!/bin/sh

curl "https://stark-falls-98169.herokuapp.com/uploads/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

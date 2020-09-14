#!/bin/sh

curl "http://localhost:4741/businesses/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

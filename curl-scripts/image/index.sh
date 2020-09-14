#!/bin/sh

curl "http://localhost:4741/uploads/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

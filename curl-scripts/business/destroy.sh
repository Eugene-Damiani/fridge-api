#!/bin/bash

curl "http://localhost:4741/businesses/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

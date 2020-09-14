#!/bin/bash

curl "https://stark-falls-98169.herokuapp.com/businesses/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

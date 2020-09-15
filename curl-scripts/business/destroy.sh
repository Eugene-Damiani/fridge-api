#!/bin/bash

curl "https://tranquil-crag-61634.herokuapp.com/businesses/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

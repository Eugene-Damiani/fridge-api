curl "http://localhost:4741/uploads" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "upload":{
      "url": "'"${URL}"'"
    }
  }'

curl "https://stark-falls-98169.herokuapp.com/uploads" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "upload":{
      "url": "'"${URL}"'"
    }
  }'

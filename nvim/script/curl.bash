# GET, POST, PUT, PATCH, DELETE

host=''
params=''
token=''
json='{
	"key": "value"
}'

curl --location --request GET "$host?$params" \
	--header 'key: value' \
	--header "Authorization: Bearer $token" \
	--header 'Content-Type: application/json' \
	--data-raw $json \
	--compressed | json_pp | pygmentize -l json

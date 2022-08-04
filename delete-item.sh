aws dynamodb delete-item --table-name UsersTable --key '{
    "Username": {"S":"gilbertrobert"}   
}'

# delete conditionally
aws dynamodb delete-item --table-name "UsersTable" --key '{"Username":{"S":"pythagoras"}}' --condition-expression "#a.#s = :v" --expression-attribute-names '{"#a":"Address", "#s":"Street"}' --expression-attribute-values '{":v":{"S":"Kyeb"}}'
#/bin/bash

aws dynamodb put-item \
    --table-name UsersTable \
    --item '{
        "Username": { "S": "gilbertrobert" }  
    }'


# prevent overwriting
# use condition expression
aws dynamodb put-item --table-name UsersTable --item '{"Username":{"S":"pythagoras"}, "Address": {"M": {"Street": {"S":"Kyebando"},"City":{"S":"Kampala"} } }}' --condition-expression "attribute_not_exists(#a)" --expression-attribute-names '{"#a": "Username"}'

# Insert a number
aws dynamodb put-item --table-name Items --item '{"No": {"S": "ITM004"}, "Description":{"S":"Spanner"}, "UnitCost":{"N":"10000"}}'













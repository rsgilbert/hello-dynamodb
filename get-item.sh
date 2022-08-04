#/bin/bash

aws dynamodb get-item \
    --table-name UsersTable \
    --key '{
        "Username": {"S": "gilbertrobert" }
    }'


# return specific attributes

aws dynamodb get-item --table-name UsersTable --key '{ "Username": {"S":"kellen"}}' --projection-expression "Age, Username"

# use expression attribute names 
aws dynamodb get-item --table-name UsersTable --key '{"Username":{"S": "kellen"}}'  --projection-expression "#a" --expression-attribute-names '{"#a": "Name"}'








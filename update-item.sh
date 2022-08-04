aws dynamodb update-item \
    --table-name UsersTable \
    --key '{
        "Username":{"S":"pythagoras"}   
    }' \
    --update-expression "SET #dob = :new_dob" \
    --expression-attribute-names '{
        "#dob": "DateOfBirth"
    }' \
    --expression-attribute-values '{
        ":new_dob": {"S":"2022-04-15"}
    }'

# remove an attribute
# return updated item
aws dynamodb update-item --table-name UsersTable --key '{"Username":{"S":"pythagoras"}}' --update-expression "REMOVE #dob" --expression-attribute-names '{"#dob":"DateOfBirth"}' --return-values "ALL_NEW"
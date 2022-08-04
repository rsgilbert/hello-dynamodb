aws dynamodb query --table-name UserOrdersTable \
    --key-condition-expression "Username = :username" \
    --expression-attribute-values '{
        ":username": {"S":"Gilbert"}
    }'


# include RANGE key in key condition expression
aws dynamodb query --table-name UserOrdersTable     --key-condition-expression "Username = :username AND OrderId = :ord1"     --expression-attribute-values '{
        ":username": {"S":"Gilbert"}, ":ord1":{"S":"ORD001"}
    }'

# use between in key condition expression
aws dynamodb query --table-name UserOrdersTable     --key-condition-expression "Username = :username AND OrderId BETWEEN :ord1 AND :ord2 "     --expression-attribute-values '{
        ":username": {"S":"Gilbert"}, ":ord1":{"S":"ORD001"}, ":ord2":{"S":"ORD009"}
    }'

# include projection expression
aws dynamodb query --table-name UserOrdersTable     --key-condition-expression "Username = :username"  --expression-attribute-values '{
        ":username": {"S":"Gilbert"}
    }' --projection-expression "Amount,OrderId"

# Get only the count
aws dynamodb query --table-name UserOrdersTable     --key-condition-expression "Username = :username"  --expression-attribute-values '{
        ":username": {"S":"Gilbert"}
    }'  --select COUNT






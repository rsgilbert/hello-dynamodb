aws dynamodb query --table-name UserOrdersTable --key-condition-expression "Username = :username" --filter-expression "Amount < :amount" --expression-attribute-values '{":amount": {"N":"100"},":username":{"S":"Gilbert"}}'
aws dynamodb scan --table-name UserOrdersTable --filter-expression "Amount > :amount" --expression-attribute-values '{":amount": {"N":"50" } }'

aws dynamodb scan --table-name Items --filter-expression "UnitCost > :uc" --expression-attribute-values '{":uc":{"N":"20"}}'

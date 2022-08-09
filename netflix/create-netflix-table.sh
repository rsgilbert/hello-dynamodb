aws dynamodb create-table --table-name Netflix --attribute-definitions '[{"AttributeName":"Actor","AttributeType":"S"},{"AttributeName":"Movie","AttributeType":"S"}]' --key-schema '[{"AttributeName":"Actor","KeyType":"HASH"},{"AttributeName":"Movie","KeyType":"RANGE"}]' --provisioned-throughput '{"ReadCapacityUnits":1,"WriteCapacityUnits":1}'







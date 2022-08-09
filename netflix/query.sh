// key condition expressions

aws dynamodb query --table-name Netflix \
--key-condition-expression "#a = :a" \
--expression-attribute-names '{"#a":"Actor"}' \
--expression-attribute-values '{":a":{"S":"Tom Hanks"}}'
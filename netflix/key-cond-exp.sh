# also filter sort key 
aws dynamodb query --table-name Netflix \
--key-condition-expression "#a = :a AND Movie > :m" \
--expression-attribute-names '{"#a":"Actor"}' \
--expression-attribute-values '{":a":{"S":"Tom Hanks"},":m":{"S":"D"}}'

# using between
aws dynamodb query --table-name Netflix \
--key-condition-expression "#a = :a AND Movie BETWEEN :m1 AND :m2" \
--expression-attribute-names '{"#a":"Actor"}' \
--expression-attribute-values '{":a":{"S":"Tom Hanks"},":m1":{"S":"A"},":m2":{"S":"D"}}'




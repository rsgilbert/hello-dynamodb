# filter expression
# filter by non-key attribute

aws dynamodb query --table-name Netflix \
--key-condition-expression "#a = :a" \
--expression-attribute-names '{"#a":"Actor","#y":"Year"}' \
--expression-attribute-values '{":a":{"S":"Tom Hanks"},":y":{"N":"2000"}}' \
--filter-expression '#y = :y'


# filter expression on a scan
aws dynamodb scan --table-name Netflix \
--expression-attribute-names '{"#y":"Year"}' \
--expression-attribute-values '{":y":{"N":"2000"}}' \ 
--filter-expression '#y < :y'


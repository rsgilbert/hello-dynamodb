# projection expression is used to specify which
# attributes you want to receive
aws dynamodb scan --table-name Netflix \
--expression-attribute-names '{"#y":"Year"}' \
--expression-attribute-values '{":y":{"N":"2000"}}' \
--filter-expression '#y < :y' \
--projection-expression "#y,Movie,Actor"
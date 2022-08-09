# Condition expressions help specify
# the conditions that must be met before a write can take place

aws dynamodb put-item \
--table-name Netflix \
--condition-expression 'attribute_not_exists(#m)' \
--item '{"Movie":{"S":"Salem"},"Actor":{"S":"Dr. Ludwig"},"Year":{"N":"2007"},"Role":{"S":"Burner"}}' \
--expression-attribute-names '{"#m":"Movie"}'


#  only  put item if Actor is atleast 7 characters
aws dynamodb put-item \
--table-name Netflix \
--condition-expression 'size(#ac) >= :min_size' \
--item '{"Movie":{"S":"Salem"},"Actor":{"S":"Dr. Ludwig"},"Year":{"N":"2007"},"Role":{"S":"Burner"}}' \
--expression-attribute-names '{"#ac":"Actor"}' \
--expression-attribute-values '{":min_size":{"N":"7"}}' 

# only update Natalie's role if her current role contains the string "Nina"
aws dynamodb update-item \
--table-name Netflix \
--key '{"Movie":{"S":"Black Swan"},"Actor":{"S":"Natalie Portman"}}' \
--update-expression "SET #r = :new_r" \
--condition-expression "contains(#r,:r_delta)" \
--expression-attribute-names '{"#r":"Role"}' \
--expression-attribute-values '{":new_r":{"S":"Main Actor"},":r_delta":{"S":"Nina"}}'











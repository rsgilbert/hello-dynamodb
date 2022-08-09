# update the value for a given attribute on an item
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "SET #r = :r"  --expression-attribute-values '{":r":{"S":"Stormbreaker hero"}}' --expression-attribute-names '{"#r":"Role"}' 

aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "SET #y = #y + :y_delta"  --expression-attribute-values '{":y_delta":{"N":"-15"}}' --expression-attribute-names '{"#y":"Year"}'

# Add five to the currently stored year value
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "ADD #y :y_delta"  --expression-attribute-values '{":y_delta":{"N":"5"}}' --expression-attribute-names '{"#y":"Year"}'

# substract 15 from the year value
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "ADD #y :y_delta"  --expression-attribute-values '{":y_delta":{"N":"-15"}}' --expression-attribute-names '{"#y":"Year"}'


# Remove the Role attribute from an item
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "REMOVE #r"   --expression-attribute-names '{"#r":"Role"}'   

# Set a picture attribute to an item. If the item does not  have such an attribute, the attribute will be created
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "SET #p = :p"  --expression-attribute-values '{":p":{"S":"http://ak"}}' --expression-attribute-names '{"#p":"PictureUrl"}'


# Add an admins attribute. Admins is a string set.
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "ADD #ad :usr"  --expression-attribute-values '{":usr":{"SS":["Joseph"]}}' --expression-attribute-names '{"#ad":"Admins"}'
# Add another admin to the admins set 
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "ADD #ad :usr"  --expression-attribute-values '{":usr":{"SS":["Matthew"]}}'
--expression-attribute-names '{"#ad":"Admins"}'
# Add many admins at once
aws dynamodb update-item --table-name Netflix --key '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"}}' --update-expression "ADD #ad :usr"  --expression-attribute-values '{":usr":{"SS":["Matthew"]}}'
--expression-attribute-names '{"#ad":"Admins"}'
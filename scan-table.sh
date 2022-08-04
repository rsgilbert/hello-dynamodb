aws dynamodb scan --table-name UserOrdersTable 

# specify max items of 2
aws dynamodb scan --table-name UserOrdersTable --max-items 2

# perform a parallel scan
aws dynamodb scan --table-name UserOrdersTable --total-segments 5 --segment 2
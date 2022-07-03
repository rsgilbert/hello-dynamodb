aws dynamodb batch-write-item \
    --request-items '{
        "UserOrdersTable": [
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Gilbert" },
                        "OrderId": {"S": "ORD001" },
                        "Amount": {"N": "14.3" } 
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Solomon" },
                        "OrderId": {"S": "ORD001" },
                        "Amount": {"N": "24.23" } 
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Gilbert" },
                        "OrderId": {"S": "ORD005" },
                        "Amount": {"N": "500" } 
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Gilbert" },
                        "OrderId": {"S": "ORD07" },
                        "Amount": {"N": "80" } 
                    }
                }
            },
                        {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Moses" },
                        "OrderId": {"S": "ORD001" },
                        "Amount": {"N": "1000" } 
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Peter" },
                        "OrderId": {"S": "ORD22" },
                        "Amount": {"N": "300" } 
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Username": { "S": "Moses" },
                        "OrderId": {"S": "ORD08" },
                        "Amount": {"N": "180" } 
                    }
                }
            }
        ]
    }'
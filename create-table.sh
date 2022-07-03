#!/bin/bash

aws dynamodb create-table \
    --table-name UsersTable \
    --attribute-definitions '[
        {
            "AttributeName": "Username",
            "AttributeType": "S"
        }
    ]' \
    --key-schema '[
        {
            "AttributeName": "Username",
            "KeyType": "HASH"
        }   
    ]' \
    --provisioned-throughput '{
        "ReadCapacityUnits": 1, 
        "WriteCapacityUnits": 1
    }' 


# create table with hash key and range key
aws dynamodb create-table --table-name UserOrdersTable \
    --attribute-definitions '[{"AttributeName": "Username", "AttributeType":"S"}, {"AttributeName":"OrderId", "AttributeType":"S"}]' --key-schema '[{"AttributeName":"Username", "KeyType":"HASH"},{"AttributeName":"OrderId", "KeyType":"RANGE"}]' --provisioned-throughput '{"ReadCapacityUnits":5,"WriteCapacityUnits":5}'
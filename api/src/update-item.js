import docClient from "./doc-client.js";
import {UpdateCommand} from "@aws-sdk/lib-dynamodb";

const cmd = new UpdateCommand({
    TableName: 'Items',
    Key: {
        No: 'ITM004'
    },
    UpdateExpression: 'SET #uc = #uc + :uc, qty = :q',
    ExpressionAttributeNames: {
        '#uc': "UnitCost",
    },
    ExpressionAttributeValues: {
        ':uc': 3000,
        ':q': 15,
    },
    ReturnValues: "ALL_NEW"
});

docClient.send(cmd)
.then(console.log)
.catch(console.error)
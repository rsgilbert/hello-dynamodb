import docClient from "./doc-client.js";
import { QueryCommand } from "@aws-sdk/lib-dynamodb";

const query = new QueryCommand({
    TableName: 'Items',
    ExpressionAttributeNames: {
        "#no":"No"
    },
    ExpressionAttributeValues: {
        ":no":"ITM005"
    },
    KeyConditionExpression: "#no = :no"
})

const run = async () => {
    try {
        const result = await docClient.send(query);
        console.log(result);
        return result;
    }
    catch(e) {
        console.error(e)
    }
} 
run()
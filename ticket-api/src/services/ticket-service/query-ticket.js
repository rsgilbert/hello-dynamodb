import docClient from "./doc-client.js";
import {QueryCommand} from "@aws-sdk/lib-dynamodb";


const queryTicket = async (ticketId) => {
    const cmd = new QueryCommand({
        TableName: 'Tickets',
        ExpressionAttributeValues: {
            ":id": ticketId
        },
        KeyConditionExpression: "id = :id"
    });
    const result = await docClient.send(cmd);
    console.log(result);
    return result.Items[0];
}

export default queryTicket
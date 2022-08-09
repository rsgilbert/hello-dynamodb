import docClient from "./doc-client.js";
import {DeleteCommand} from "@aws-sdk/lib-dynamodb";


const deleteTicket = async (ticketId) => {
    const cmd = new DeleteCommand({
        TableName: "Tickets",
        Key: {
            id: ticketId
        }
    });
    const result = await docClient.send(cmd);
    console.log(result);
    return result;
}

export default deleteTicket;
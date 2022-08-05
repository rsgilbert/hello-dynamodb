import docClient from './doc-client.js'
import {PutCommand} from "@aws-sdk/lib-dynamodb";
import queryTicket from "./query-ticket.js";

const createTicket = async () => {
    const id = `TKT-${new Date().getTime()}`
    const cmd = new PutCommand({
        TableName: "Tickets",
        Item: { id }
    });
    const result = await docClient.send(cmd);
    console.log(result);
    const ticket = await queryTicket(id);
    console.log(ticket);
    return ticket;
}

export default createTicket;
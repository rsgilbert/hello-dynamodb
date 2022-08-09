import docClient from "./doc-client.js";
import {UpdateCommand} from "@aws-sdk/lib-dynamodb";
import queryTicket from "./query-ticket.js";

/**
 *
 * @param ticketId
 * @param {Pick<Ticket>} ticket
 * @returns {Promise<(Omit<UpdateItemCommandOutput, "Attributes" | "ItemCollectionMetrics"> & {Attributes?: Record<string, NativeAttributeValue>, ItemCollectionMetrics?: Omit<ItemCollectionMetrics, "ItemCollectionKey"> & {ItemCollectionKey?: Record<string, NativeAttributeValue>}})|UpdateItemCommandOutput>}
 */
const updateTicket = async (ticketId, ticket) => {
    const { issue, client } = ticket;
    let updateExpression = "SET ";
    let expressionAttributeValues = {};

    if(issue) {
        updateExpression += "issue = :issue"
        if(client) updateExpression += ",";
        expressionAttributeValues[":issue"] = ticket.issue;
    }
    if(client) {
        updateExpression += "client = :client";
        expressionAttributeValues[":client"] = ticket.client;
    }
    const cmd = new UpdateCommand({
        TableName: "Tickets",
        Key: { id: ticketId },
        UpdateExpression: updateExpression,
        ExpressionAttributeValues: expressionAttributeValues
    });
    const result = await docClient.send(cmd);
    console.log(result);
    return await queryTicket(ticketId);
}

export default updateTicket;
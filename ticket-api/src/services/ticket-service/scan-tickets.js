import docClient from "./doc-client.js";
import { ScanCommand} from "@aws-sdk/lib-dynamodb";


const scanTickets = async (ticketId) => {
    const cmd = new ScanCommand({
        TableName: "Tickets",
        ReturnConsumedCapacity:"TOTAL"
    });

    const result = await docClient.send(cmd);
    console.log(result);
    return result.Items;
}

export default scanTickets;
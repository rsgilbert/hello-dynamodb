import docClient from "./doc-client.js";
import {ScanCommand} from "@aws-sdk/lib-dynamodb";

const cmd = new ScanCommand({
    TableName: "Items",
    ReturnConsumedCapacity:"TOTAL",
    ConsistentRead: true
});

(async () => {
    const result = await docClient.send(cmd);
    console.log(result)
})().catch(console.error)
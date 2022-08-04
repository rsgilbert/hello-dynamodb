import docClient from "./doc-client.js";
import {DeleteCommand} from "@aws-sdk/lib-dynamodb";

const cmd = new DeleteCommand({
    TableName: 'Items',
    Key: { No: 'ITM005'}
});

(async function _() {
    const result = await docClient.send(cmd);
    console.log(result)
})().catch(console.error)
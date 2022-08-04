import docClient from './doc-client.js'
import {PutCommand} from "@aws-sdk/lib-dynamodb";

const run = async () => {
    const cmd = new PutCommand({
        TableName: "Items",
        Item: {
            No: "ITM005",
            Description:"Bedcovers",
            UnitCost: 85_000 // will be automatically converted into a number
        }
    });
    const result = await docClient.send(cmd);
    console.log(result);
}

run()
.catch(e => { console.error(e)});
import { DynamoDBDocumentClient } from '@aws-sdk/lib-dynamodb';
import { DynamoDBClient } from '@aws-sdk/client-dynamodb';

const region = 'ap-south-1';

const ddbClient = new DynamoDBClient({ region });

const docClient = DynamoDBDocumentClient.from(ddbClient);

export default docClient;
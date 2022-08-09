import express from 'express'
import morgan from 'morgan';
import ticketRouter from "./routers/ticket-router.js";
import config from "./config.json.js";


const app = express();
app.use(morgan('tiny', { immediate: true })); // log the moment request hits the server
app.use(morgan('tiny'));
app.use(express.json());

app.use('/tickets', ticketRouter);

app.get('/', (req, res) => res.send('Success, running'));
app.get('/test', (req, res) => res.send("Test successful. App is running"));


app.listen(config.port, ()=> console.log('running on port', config.port));

import express from 'express';
import ticketService from "../services/ticket-service/index.js";


const ticketRouter = express.Router();

/**
 * Show list of tickets
 * http :3000/tickets
 */
ticketRouter.get('/'
    , async (req, res, next) => {
    try {
        const tickets = await ticketService.scanTickets();
        res.json(tickets);
    }
    catch (e) {
        next(e);
    }
});

/**
 * Create a ticket
 * http -j :3000/tickets issue="not working" client="ak"
 */
ticketRouter.post('/', async (req, res, next) => {
    try {
        const result = await ticketService.createTicket();
        res.json(result);
    }
    catch (e) {
        next(e);
    }
});




export default ticketRouter;
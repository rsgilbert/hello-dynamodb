import express from 'express';
import ticketService from "../services/ticket-service/index.js";
import {body} from "express-validator";
import {validationResult} from "express-validator";
import http from '@passioncloud/http';

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
 * Get a single ticket
 */
ticketRouter.get('/:id', async (req, res, next) => {
    try {
        const ticketId = req.params["id"];
        const ticket = await ticketService.queryTicket(ticketId);
        res.json(ticket);
    }
    catch (e) {
        next(e);
    }
})
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


/**
 * Update a ticket
 * http -j PATCH :3000/tickets/TKT-1002042 issue="not working" client="ak"
 */
ticketRouter.patch('/:id',
    async (req, res, next) => {
    try {
        const ticketId = req.params["id"];
        const result = await ticketService.updateTicket(ticketId, req.body);
        res.json(result);
    }
    catch (e) {
        next(e);
    }
});


/**
 * Delete a ticket
 * http DELETE :3000/tickets/TKT-2242
 */
ticketRouter.delete('/:id',async (req, res, next) => {
        try {
            const ticketId = req.params["id"];
            await ticketService.deleteTicket(ticketId);
            return res.sendStatus(http.statusCodes.NO_CONTENT);
        }
        catch (e) {
            next(e);
        }
    });

function handleValidationErrors(req, res, next) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({errors: errors.array()});
    }
    next();
}
export default ticketRouter;
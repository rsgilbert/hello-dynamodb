import createTicket from "./create-ticket.js";
import scanTickets from "./scan-tickets.js";
import queryTicket from "./query-ticket.js";


const ticketService = {
    createTicket,
    queryTicket,
    scanTickets
}

export default ticketService;
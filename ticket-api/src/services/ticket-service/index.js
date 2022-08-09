import createTicket from "./create-ticket.js";
import scanTickets from "./scan-tickets.js";
import queryTicket from "./query-ticket.js";
import deleteTicket from "./delete-ticket.js";
import updateTicket from "./update-ticket.js";


const ticketService = {
    createTicket,
    queryTicket,
    scanTickets,
    deleteTicket,
    updateTicket
}

export default ticketService;
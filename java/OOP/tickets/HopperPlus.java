public class HopperPlus extends Addons {
    public HopperPlus(Ticket ticket){
        this.ticket = ticket;
        park = ticket.park;
        addOns = addAddon();
        cost = cost();
    }
    
    public String addAddon() {
        return ticket.getPark()+"# Park Hopper Plus\t| $15\t\t#"+line;
    }
    public int cost() {
        return ticket.cost+15;
    }
}

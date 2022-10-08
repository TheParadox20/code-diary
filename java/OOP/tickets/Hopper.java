public class Hopper extends Addons{
    public Hopper(Ticket ticket){
        this.ticket = ticket;
        park = ticket.park;
        addOns = addAddon();
        cost = cost();
    }
    
    public String addAddon() {
        return ticket.getPark()+"# Park Hopper\t\t| $25\t\t#"+line;
    }
    public int cost() {
        return ticket.cost+25;
    }
    
}

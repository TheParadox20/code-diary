public class Snacks extends Addons {
    public Snacks(Ticket ticket){
        this.ticket = ticket;
        park = ticket.park;
        addOns = addAddon();
        cost = cost();
    }

    public String addAddon() {
        return ticket.getPark()+"# Here for snacks\t| $19\t\t#"+line;
    }
    public int cost() {
        return ticket.cost+19;
    }
}
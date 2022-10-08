public class Hydrated extends Addons {
    public Hydrated(Ticket ticket){
        this.ticket = ticket;
        park = ticket.park;
        addOns = addAddon();
        cost = cost();
    }

    public String addAddon() {
        return ticket.getPark()+"# Stay Hydrated!\t| $16\t\t#"+line;
    }
    public int cost() {
        return ticket.cost+16;
    }
}
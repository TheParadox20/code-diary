public class SkipLine extends Addons {
    public SkipLine(Ticket ticket){
        this.ticket = ticket;
        park = ticket.park;
        addOns = addAddon();
        cost = cost();
    }

    public String addAddon() {
        return ticket.getPark()+"# Skip the line pass\t| $25\t\t#"+line;
    }
    public int cost() {
        return ticket.cost+25;
    }
}

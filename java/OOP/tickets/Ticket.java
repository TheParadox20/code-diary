public abstract class Ticket {
    int cost = 150;//base ticket cost
    String line = "\n#########################################\n";
    String park = "Not Selected";
    String addOns = "";
    public void setPark(String park){
        this.park = park;
    }
    public String getPark(){
        return addOns;
    }
    public String toString(){
        String header = this.line+"#\tWelcome To Disney World\t\t#"+this.line+"# Destination\t\t| "+this.park+"\t#"+this.line+"#\t\tAddons\t\t\t#"+this.line;
        String total = "# TOTAL\t\t\t| "+this.cost+"\t\t#"+this.line;
        return header+this.addOns+total;
    }
}
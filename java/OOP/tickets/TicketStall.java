import java.util.Scanner;

public class TicketStall {
    public static String[] parks = {"Animal Kingdom","EPCOT","Hollywood Studios","Magic Kingdom"};
    public static String[] addons = {"Park Hopper","Park Hopper Plus","Skip The Line Pass","I’m just here for the Snacks","Stay Hydrated!"};
    public static void main(String[] args) {
        Ticket ticket = new AnimalKingdom();//Initialy set ticket to any value of type Ticket
        System.out.println("Hello & Welcome to Disney world Ticket Stall. Which park will you visit");
        Scanner Choice = new Scanner(System.in);
        for (int i = 0; i < parks.length; i++) //List available parks
            System.out.println("\t"+(i+1)+".) "+parks[i]);
        int choice = Choice.nextInt();
        // ticket.setPark(parks[choice-1]); //Alternative way to set parkname
        switch (choice) {
            case 1:
                ticket = new AnimalKingdom();
                break;
            case 2:
                ticket = new Epcot();
                break;
            case 3:
                ticket = new Hollywood();
                break;
            case 4:
                ticket = new MagicKingdom();
                break;
            default:
                break;
        }
        while (true) {
            System.out.println("Select an addon or Enter 0 to quit");
            for (int i = 0; i < addons.length; i++) //List addons
                System.out.println("\t"+(i+1)+".) "+addons[i]);
            choice = Choice.nextInt();
            if (choice==0) break;
            switch (choice) {
                case 1:
                    ticket = new Hopper(ticket);
                    break;
                case 2:
                    ticket = new HopperPlus(ticket);
                    break;
                case 3:
                    ticket = new SkipLine(ticket);
                    break;
                case 4:
                    ticket = new Snacks(ticket);
                    break;
                case 5:
                    ticket = new Hydrated(ticket);
                    break;
                default:
                    break;
            }
        }
        System.out.println(ticket.toString());
    }
}
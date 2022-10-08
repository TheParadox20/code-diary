public class StarbuzzCoffee {
    public static void main(String[] args) {
        //Order an espresso, no condiments
        Beverage beverage = new Espresso();
        System.out.println(beverage.getDescription()+" $"+beverage.cost());
        //Order a dark roast, with double mocha and whip
        Beverage beverage2 = new DarkRoast();
        beverage2 = new Mocha(beverage2);
        beverage2 = new Mocha(beverage2);
        beverage2 = new Whip(beverage2);
        System.out.println(beverage2.getDescription()+" $"+beverage2.cost());
        //Order House blend with soy, mocha, and whip
        Beverage beverage3 = new HouseBlend();
        beverage3 = new Soy(beverage3);
        beverage3 = new Mocha(beverage3);
        beverage3 = new Whip(beverage3);
        System.out.println(beverage3.getDescription()+" $"+beverage3.cost());
    }
}

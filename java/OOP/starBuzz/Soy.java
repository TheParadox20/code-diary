public class Soy extends CondimentDecorator{
    public Soy(Beverage beverage){
        this.beverage = beverage;
    }
    @Override
    public String getDescription() {
        return beverage.description+", Soy";
    }
    @Override
    public double cost() {
        return beverage.cost() + 0.15;
    }
}

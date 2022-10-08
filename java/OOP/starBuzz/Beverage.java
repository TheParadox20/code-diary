public abstract class Beverage {//Abstract class with two methods
    String description = "Unknown Beverage";

    public String getDescription(){
        return description;
    }

    public abstract double cost();
}

abstract class Drink {
  String description = "Unknown drink";
  String size = "Unknown size";

  String getDescription() => description;

  String setSize(String size) => this.size = size;

  String getSize() => size;

  double cost();
}

abstract class IngredientsDecorator extends Drink{
  String getDescription();
  String getSize();
}

class Espresso extends Drink {
  Espresso() {
    description = "Espresso Coffee";
  }

  @override
  double cost() => 1.99;
}

class StarCafeSpecial extends Drink {
  StarCafeSpecial(){
    description = "Star Cafe Special Coffee";
  }
  @override
  double cost() => 0.89;
}

class HeavilyRoastedCoffee extends Drink {
  HeavilyRoastedCoffee(){
    description = "Heavily Roasted Coffee";
  }

  @override
  double cost() => 0.99;
}

class DecaffeinatedCoffee extends Drink {
  DecaffeinatedCoffee(){
    description = "Decaffeinated Coffee";
  }

  @override
  double cost() => 1.05;
}

class Chocolate extends IngredientsDecorator {
  Drink drink;

  Chocolate(this.drink);

  String getDescription() => drink.getDescription() + ", Chocolate";

    @override
    double cost() => drink.cost() + 0.20;
}

class Milk extends IngredientsDecorator {
  Drink drink;

  Milk(this.drink);

  String getDescription() => drink.getDescription() + ", Milk";

  @override
  double cost() => drink.cost() + 0.10;
}

class SoyMilk extends IngredientsDecorator {
  Drink drink;

  SoyMilk(this.drink);

  String getDescription() => drink.getDescription() + ", Soy Milk";
  

  @override
  double cost() {
    double cost = drink.cost();
    if(getSize() == "Small"){
      cost += 0.10;
    }else if(getSize() == "Medium"){
      cost += 0.15;
    }else if(getSize() == "Large"){
      cost += 0.20;
    }
    return cost;
  }
}

class WhippedCream extends IngredientsDecorator {
  Drink drink;

  WhippedCream(this.drink);

  String getDescription() => drink.getDescription() + ", Whipped Cream";

  @override
  double cost() => drink.cost() + 0.10;
}

class StarCafe {

  void main() {
    Drink drink = Espresso();
    drink.setSize("Large");
    print(drink.getDescription()  + ", " + drink.getSize() + " " +  drink.cost().toStringAsFixed(2) + " zł");

    Drink drink2 = HeavilyRoastedCoffee();
    drink2 = Chocolate(drink2);
    drink2 = Chocolate(drink2);
    drink2 = WhippedCream(drink2);
    print(drink2.getDescription()  + ", " + drink2.getSize() + " " + drink2.cost().toStringAsFixed(2) + " zł");


    Drink drink3 = StarCafeSpecial();
    drink3.setSize("Large");
    drink3 = SoyMilk(drink3);
    drink3 = Chocolate(drink3);
    drink3 = WhippedCream(drink3);
    print(drink3.getDescription()  + ", " + drink3.getSize() + " " + drink3.cost().toStringAsFixed(2) + " zł");

    Drink drink4 = DecaffeinatedCoffee();
    drink4 = Milk(drink4);
    drink4 = WhippedCream(drink4);
    print(drink4.getDescription()  + ", " + drink4.getSize() + " " + drink4.cost().toStringAsFixed(2) + " zł");
  }
}

void main(){
  StarCafe starCafe = StarCafe();
  starCafe.main();
}
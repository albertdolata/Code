import 'Pizza.dart';

class AmericanPepperoniPizza extends Pizza {
  AmericanPepperoniPizza() {
    name = "American Pepperoni Pizza";
    dough = "Extra thick, crispy dough";
    sauce = "Plum tomato sauce";

    toppings.add("Coarsely grated Mozzarella cheese");
    toppings.add( "Sliced Pepperoni");
    toppings.add("Black Olives");
    toppings.add("Spinach");
    toppings.add("Eggplant");
  }

  @override
  void slice() => print("Slicing pizza into squared pieces");

  @override
  void prepare() => "Preparing American Pepperoni Pizza";
}

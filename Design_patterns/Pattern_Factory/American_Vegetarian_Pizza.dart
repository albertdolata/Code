import 'Pizza.dart';

class AmericanVegetarianPizza extends Pizza {
  AmericanVegetarianPizza() {
    name = "American Vegetarian Pizza";
    dough = "Extra thick, crispy dough";
    sauce = "Plum tomato sauce";

    toppings.add("Coarsely grated Mozzarella cheese");
    toppings.add("Black Olives");
    toppings.add("Spinach");
    toppings.add("Eggplant");
  }

  @override
  void slice() => print("Slicing pizza into squared pieces");
}

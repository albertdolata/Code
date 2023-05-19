import 'Pizza.dart';

class ItalianVegetarianPizza extends Pizza {
  ItalianVegetarianPizza() {
    name = "Italian cheese pizza with Marinara sauce";
    dough = "Thing crusty dough";
    sauce = "Marinara sauce";

    toppings.add("Grated Reggiano cheese");
    toppings.add("Garlic");
    toppings.add("Onion");
    toppings.add("Mushrooms");
    toppings.add("Red Pepper");
  }
}

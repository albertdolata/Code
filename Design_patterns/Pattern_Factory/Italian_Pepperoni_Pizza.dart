import 'Pizza.dart';

class ItalianPepperoniPizza extends Pizza {
  ItalianPepperoniPizza() {
    name = "Italian cheese pizza with Marinara sauce";
    dough = "Thing crusty dough";
    sauce = "Marinara sauce";

    toppings.add("Grated Reggiano cheese");
    toppings.add("Sliced Pepperoni");
    toppings.add("Garlic");
    toppings.add("Onion");
    toppings.add("Mushrooms");
    toppings.add("Red Pepper");
  }
}

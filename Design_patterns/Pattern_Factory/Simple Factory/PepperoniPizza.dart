import 'Pizza.dart';

class PepperoniPizza extends Pizza {
   PepperoniPizza() {
    name = "Pepperoni Pizza";
    dough = "Crust";
    sauce = "Marinara sauce";
    toppings.add("Sliced Pepperoni");
    toppings.add("Sliced Onion");
    toppings.add("Grated parmesan cheese");
  }
}
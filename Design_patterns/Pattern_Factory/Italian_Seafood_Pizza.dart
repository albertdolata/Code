import 'Pizza.dart';

class ItalianSeafoodPizza extends Pizza {
  ItalianSeafoodPizza() {
    name = "Italian cheese pizza with Marinara sauce";
    dough = "Thing crusty dough";
    sauce = "Marinara sauce";

    toppings.add("Grated Reggiano cheese");
    toppings.add("Fresh Clams from Amalfi Coast");
  }
}

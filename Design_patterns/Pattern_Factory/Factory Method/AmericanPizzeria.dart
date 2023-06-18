import 'Pizzeria.dart';
import 'Pizza.dart';
import 'AmericanCheesePizza.dart';
import 'AmericanClamPizza.dart';
import 'AmericanPepperoniPizza.dart';
import 'AmericanVeggiePizza.dart';

class AmericanPizzeria extends Pizzeria {
  Pizza? createPizza(String item) {
    if (item == "cheese") {
      return AmericanCheesePizza();
    } else if (item == "veggie") {
      return AmericanVeggiePizza();
    } else if (item == "clam") {
      return AmericanClamPizza();
    } else if (item == "pepperoni") {
      return AmericanPepperoniPizza();
    } else {
      return null;
    }
  }
}

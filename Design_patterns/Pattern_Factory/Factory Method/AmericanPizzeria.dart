import 'Pizzeria.dart';

class AmericanPizzeria extends Pizzeria {
  Pizza createPizza(String item) {
    if (item == "cheese") {
      return AmericanCheesePizza;
    } else if (item == "vegggie") {
      return AmericanVeggiePizza;
    } else if (item == "clam") {
      return AmericanClamPizza;
    } else if (item == "pepperoni") {
      return AmericanPepperoniPizza;
    } else {
      return null;
    }
  }
}

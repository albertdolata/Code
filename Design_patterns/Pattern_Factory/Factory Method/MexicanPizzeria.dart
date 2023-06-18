import 'Pizzeria.dart';

class MexicanPizzeria extends Pizzeria {
  Pizza createPizza(String item) {
    if (item == "cheese") {
      return MexicanCheesePizza;
    } else if (item == "vegggie") {
      return MexicanVeggiePizza;
    } else if (item == "clam") {
      return MexicanClamPizza;
    } else if (item == "pepperoni") {
      return MexicanPepperoniPizza;
    } else {
      return null;
    }
  }
}

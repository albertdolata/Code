import 'Pizzeria.dart';
import 'Pizza.dart';

class MexicanPizzeria extends Pizzeria {
  Pizza? createPizza(String item) {
    if (item == "cheese") {
      return MexicanCheesePizza;
    } else if (item == "veggie") {
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

import 'Pizza.dart';
import 'CheesePizza.dart';
import 'ClamPizza.dart';
import 'PepperoniPizza.dart';
import 'VeggiePizza.dart';

class SimplePizzaFactory {
  Pizza? createPizza(String type) {
    Pizza? pizza = null;

    if (type == "cheese") {
      pizza = CheesePizza();
    } else if (type == "pepperoni") {
      pizza = PepperoniPizza();
    } else if (type == "clam") {
      pizza = ClamPizza();
    } else if (type == "veggie") {
      pizza = VeggiePizza();
    }
    return pizza;
  }
}

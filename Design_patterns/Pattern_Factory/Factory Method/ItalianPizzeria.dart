import 'Pizzeria.dart';
import 'Pizza.dart';
import 'ItalianCheesePizza.dart';
import 'ItalianClamPizza.dart';
import 'ItalianPepperoniPizza.dart';
import 'ItalianVeggiePizza.dart';

class ItalianPizzeria extends Pizzeria {
  Pizza? createPizza(String item) {
    if (item == "cheese") {
      return ItalianCheesePizza();
    } else if (item == "veggie") {
      return ItalianVeggiePizza();
    } else if (item == "clam") {
      return ItalianClamPizza();
    } else if (item == "pepperoni") {
      return ItalianPepperoniPizza();
    } else {
      return null;
    }
  }
}

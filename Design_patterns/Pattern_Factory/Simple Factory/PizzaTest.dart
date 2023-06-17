import 'Pizza.dart';
import 'Pizzeria.dart';
import 'SimplePizzaFactory.dart';

void main() {
  SimplePizzaFactory simplePizzaFactory = SimplePizzaFactory();
  Pizzeria pizzeria = Pizzeria(simplePizzaFactory);

  Pizza? pizza = pizzeria.orderPizza("cheese");
  print("We ordered ${pizza?.getName()}");
  print("-----------------------");

  pizza = pizzeria.orderPizza("clam");
  print("We ordered ${pizza?.getName()}");
  print("-----------------------");

  pizza = pizzeria.orderPizza("pepperoni");
  print("We ordered ${pizza?.getName()}");

}
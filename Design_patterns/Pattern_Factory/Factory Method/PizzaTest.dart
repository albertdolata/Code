import 'AmericanPizzeria.dart';
import 'ItalianPizzeria.dart';
import 'Pizza.dart';
import 'Pizzeria.dart';

void main() {
  Pizzeria italian = ItalianPizzeria();
  Pizzeria american = AmericanPizzeria();

  Pizza? pizza = italian.orderPizza("clam");
  print("Eric ordered: ${pizza?.getName()}");

  print("-------------------------------------");

  pizza = american.orderPizza("pepperoni");
  print("Jack ordered: ${pizza?.getName()}");
}
import 'American_Pizzeria.dart';
import 'Italian_Pizzeria.dart';
import 'Pizza.dart';
import 'Pizzeria.dart';

void main() {
  Pizzeria italian = ItalianPizzeria();
  Pizzeria american = AmericanPizzeria();

  Pizza pizza = italian.orderPizza("vegetarian");
  print("Eryk ordered: " + pizza.getName());

  pizza = american.orderPizza("cheese");
  print("Jacek ordered: " + pizza.getName());
}

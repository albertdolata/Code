import 'ItalianPizzeria.dart';
import 'AmericanPizzeria.dart';
import 'Pizza.dart';
import 'Pizzeria.dart';

void main() {
  Pizzeria italianPizzeria = ItalianPizzeria();
  Pizzeria americanPizzeria = AmericanPizzeria();
  
  Pizza? pizza = italianPizzeria.orderPizza("pepperoni");
  print("Darek ordered: $pizza");

  pizza = americanPizzeria.orderPizza("pepperoni");

}
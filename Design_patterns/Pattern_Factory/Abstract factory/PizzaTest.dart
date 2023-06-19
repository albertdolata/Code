import 'ItalianPizzeria.dart';
import 'Pizza.dart';
import 'Pizzeria.dart';

void main() {
  Pizzeria italianPizzeria = ItalianPizzeria();
  
  Pizza? pizza = italianPizzeria.orderPizza("cheese");
  print("Darek ordered: ${pizza?.getName()}");
}
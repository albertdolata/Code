import 'ItalianCheesePizza.dart';
import 'Italian_Pepperoni_Pizza.dart';
import 'Italian_Seafood_Pizza.dart';
import 'Italian_Vegetarian_Pizza.dart';
import 'Pizzeria.dart';
import 'Pizza.dart';
class ItalianPizzeria extends Pizzeria {
  @override
  Pizza createPizza(String type) {
    if (type == "cheese"){
      return ItalianCheesePizza();
    } else if (type == "vegetarian") {
      return ItalianVegetarianPizza();
    } else if (type == "seafood"){
      return ItalianSeafoodPizza;
    } else if (type == "pepperoni"){
      return ItalianPepperoniPizza();
    }
  }
}

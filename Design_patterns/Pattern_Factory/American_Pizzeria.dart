import 'American_Pepperoni_Pizza.dart';
import 'American_Seafood_Pizza.dart';
import 'American_Vegetarian_Pizza.dart';
import 'Pizzeria.dart';
import 'Pizza.dart';
import 'AmericanCheesePizza.dart';

class AmericanPizzeria extends Pizzeria {
  @override
  Pizza createPizza(String type) {
    if (type == "cheese"){
      return AmericanCheesePizza();
    } else if (type == "vegetarian") {
      return AmericanVegetarianPizza();
    } else if (type == "seafood"){
      return AmericanSeafoodPizza;
    } else if (type == "pepperoni"){
      return AmericanPepperoniPizza();
    }
  }
}

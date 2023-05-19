import 'Pizzeria.dart';

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

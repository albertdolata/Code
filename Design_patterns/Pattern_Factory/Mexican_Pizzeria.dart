import 'Pizzeria.dart';

class MexicanPizzeria extends Pizzeria {
  @override
  Pizza createPizza(String type) {
    if (type == "cheese"){
      return MexicanCheesePizza();
    } else if (type == "vegetarian") {
      return MexicanVegetarianPizza();
    } else if (type == "seafood"){
      return MexicanSeafoodPizza;
    } else if (type == "pepperoni"){
      return MexicanPepperoniPizza();
    }
  }
}

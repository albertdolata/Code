import 'CheesePizza.dart';
import 'ClamPizza.dart';
import 'ItalianPizzaIngredientFactory.dart';
import 'PepperoniPizza.dart';
import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';
import 'Pizzeria.dart';
import 'VeggiePizza.dart';

class ItalianPizzeria extends Pizzeria {
  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    PizzaIngredientFactory ingredientFactory = ItalianPizzaIngredientFactory();
    if(type == "cheese") {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName("Italian Cheese Pizza");
    } else if (type == "veggie") {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName("Italian Veggie Pizza");
    } else if (type == "pepperoni") {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName("Italian Pepperoni Pizza");
    } else if (type == "clams") {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName("Italian Clams Pizza");
    }
    return pizza;
  }
}
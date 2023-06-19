import 'AmericanPizzaIngredientFactory.dart';
import 'CheesePizza.dart';
import 'ClamPizza.dart';
import 'PepperoniPizza.dart';
import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';
import 'Pizzeria.dart';
import 'VeggiePizza.dart';

class ItalianPizzeria extends Pizzeria {
  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    PizzaIngredientFactory ingredientFactory = AmericanPizzaIngredientFactory();
    if(type == "cheese") {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName("American Cheese Pizza");
    } else if (type == "veggie") {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName("American Veggie Pizza");
    } else if (type == "pepperoni") {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName("American Pepperoni Pizza");
    } else if (type == "clams") {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName("American Clams Pizza");
    }
    return pizza;
  }
}
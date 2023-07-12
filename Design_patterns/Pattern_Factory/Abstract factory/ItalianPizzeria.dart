import 'CheesePizza.dart';
import 'ClamPizza.dart';
import 'ItalianPizzaIngredientFactory.dart';
import 'PepperoniPizza.dart';
import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';
import 'Pizzeria.dart';
import 'VeggiePizza.dart';

abstract class PizzaPreperation {
  void preparePizza();
}

class ItalianPizzaPreperation extends PizzaPreperation {
  @override
  preparePizza() {
    print('Prepared italian pizza');
  }
}

class AmericanPizzaPreperation extends PizzaPreperation {
  @override
  void preparePizza() {
    print('Prepared american pizza');
  }
}

class Pizzeria {
  late PizzaPreperation _pizzaPreperation;

  // Pizzeria(this._pizzaPreperation);

  void doPizza() {
    _pizzaPreperation.preparePizza();
  }

  void setPizzaPreperation(PizzaPreperation pizzaPreperation) {
    this._pizzaPreperation = pizzaPreperation;
  }

  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    PizzaIngredientFactory ingredientFactory = ItalianPizzaIngredientFactory();
    if (type == "cheese") {
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


void main() {
  PizzaPreperation pizzaPreperation = AmericanPizzaPreperation();
  Pizzeria pizzeria = Pizzeria();
  // pizzeria.setPizzaPreperation(pizzaPreperation);

  pizzeria.doPizza();
}
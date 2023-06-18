import 'Pizza.dart';

abstract class Pizzeria {
  Pizza? orderPizza(String type) {
    Pizza? pizza;

    pizza = createPizza(type);

    pizza?.prepare();
    pizza?.bake();
    pizza?.slice();
    pizza?.pack();

    return pizza;
  }
  Pizza? createPizza(String type);
}
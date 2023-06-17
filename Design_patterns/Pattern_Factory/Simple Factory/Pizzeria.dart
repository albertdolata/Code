import 'SimplePizzaFactory.dart';
import 'Pizza.dart';

class Pizzeria {
  final SimplePizzaFactory factory;

  Pizzeria(this.factory);

  Pizza? orderPizza(String type) {
    Pizza? pizza;
    pizza = factory.createPizza(type);

    pizza?.prepare();
    pizza?.bake();
    pizza?.slice();
    pizza?.pack();
    return pizza;
  }
}

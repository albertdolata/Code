import 'Pizza.dart';

abstract class Pizzeria {
  Pizza? orderPizza(String type) {
    Pizza? pizza = createPizza(type);
    print("--- Making a ${pizza?.name} ---");
    pizza?.prepare();
    pizza?.bake();
    pizza?.slice();
    pizza?.pack();

    return pizza;
  }

  Pizza? createPizza(String type);
}

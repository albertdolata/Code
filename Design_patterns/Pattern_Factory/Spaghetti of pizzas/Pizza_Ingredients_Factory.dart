import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Sauce.dart';
import 'Vegetables.dart';
import 'Pepperoni.dart';

abstract class PizzaIngredientsFactory {
  Dough createDough();

  Sauce createSauce();

  Cheese createCheese();

  List<Vegetables> createVegetables();

  Pepperoni createPepperoni();

  Clams createClams();
}

import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Pepperoni.dart';
import 'Sauce.dart';
import 'Vegetables.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();

  Sauce createSauce();

  Cheese createCheese();

  List<Vegetables> createVegetables();

  Pepperoni createPepperoni();

  Clams createClams();
}

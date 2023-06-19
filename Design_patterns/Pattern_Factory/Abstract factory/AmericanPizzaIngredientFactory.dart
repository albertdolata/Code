import 'BlackOlives.dart';
import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Eggplant.dart';
import 'FrozenClams.dart';
import 'MozzarellaCheese.dart';
import 'Pepperoni.dart';
import 'PizzaIngredientFactory.dart';
import 'PlumTomatoSauce.dart';
import 'Sauce.dart';
import 'SlicedPepperoni.dart';
import 'Spinach.dart';
import 'ThickCrustyDough.dart';
import 'Vegetables.dart';

class AmericanPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThickCrustyDough();
  }

  @override
  Cheese createCheese() {
    return MozzarellaCheese();
  }

  @override
  Clams createClams() {
    return FrozenClams();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return PlumTomatoSauce();
  }

  @override
  List<Vegetables> createVegetables() {
    List<Vegetables> vegetables = [BlackOlives(), Spinach(), Eggplant()];
    return vegetables;
  }
}
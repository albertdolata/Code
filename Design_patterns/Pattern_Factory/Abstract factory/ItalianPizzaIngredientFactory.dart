import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'FreshClams.dart';
import 'Garlic.dart';
import 'MarinaraSauce.dart';
import 'Mushrooms.dart';
import 'Onion.dart';
import 'Pepperoni.dart';
import 'PizzaIngredientFactory.dart';
import 'RedPepper.dart';
import 'ReggioCheese.dart';
import 'Sauce.dart';
import 'SlicedPepperoni.dart';
import 'ThinCrustyDough.dart';
import 'Vegetables.dart';

class ItalianPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThinCrustyDough();
  }

  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  Clams createClams() {
    return FreshClams();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  List<Vegetables> createVegetables() {
    List<Vegetables> vegetables = [Garlic(), Onion(), Mushrooms(), RedPepper()];
    return vegetables;
  }
}

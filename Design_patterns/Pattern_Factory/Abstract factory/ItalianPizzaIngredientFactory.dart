import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Pepperoni.dart';
import 'PizzaIngredientFactory.dart';
import 'Sauce.dart';
import 'Vegetables.dart';

class ItalianPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThinCrustyDough;
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
    return PepperoniSlices();
  }

  @override
  Sauce createSauce() {
    return MarianaSauce();
  }

  @override
  List<Vegetables> createVegetables() {
    List<Vegetables> vegetables = [Garlic(), Onion(), Mushrooms(), RedPepper()];
    return vegetables;
  }
}

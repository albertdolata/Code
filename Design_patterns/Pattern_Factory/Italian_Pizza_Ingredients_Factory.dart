import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Fresh_Clams.dart';
import 'Garlic.dart';
import 'Marinara_Sauce.dart';
import 'Mushroom.dart';
import 'Onion.dart';
import 'Pepperoni.dart';
import 'Pepperoni_Slices.dart';
import 'Pizza_Ingredients_Factory.dart';
import 'Reggiano_Cheese.dart';
import 'Sauce.dart';
import 'Thin_Crispy_Dough.dart';
import 'Vegetables.dart';

class ItalianPizzaIngredientsFactory extends PizzaIngredientsFactory {
  @override
  Dough createDough() => ThinCrispyDough();
  @override
  Sauce createSauce() => MarinaraSauce();
  @override
  Cheese createCheese() => ReggianoCheese();
  @override
  List<Vegetables> createVegetables() => [ Garlic(), Onion(), Mushroom()];
  @override
  Pepperoni createPepperoni() => PepperoniSlices();
  @override
  Clams createClams() => FreshClams();
}
import 'Black_Olives.dart';
import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Eggplant.dart';
import 'Fresh_Clams.dart';
import 'Frozen_Clams.dart';
import 'Garlic.dart';
import 'Marinara_Sauce.dart';
import 'Mozzarella_Cheese.dart';
import 'Mushroom.dart';
import 'Onion.dart';
import 'Pepperoni.dart';
import 'Pepperoni_Slices.dart';
import 'Pizza_Ingredients_Factory.dart';
import 'Reggiano_Cheese.dart';
import 'Sauce.dart';
import 'Spinach.dart';
import 'Thick_Crispy_Dough.dart';
import 'Thin_Crispy_Dough.dart';
import 'Tomato_Sauce.dart';
import 'Vegetables.dart';

class ItalianPizzaIngredientsFactory extends PizzaIngredientsFactory {
  @override
  Dough createDough() => ThickCrispyDough();
  @override
  Sauce createSauce() => TomatoSauce();
  @override
  Cheese createCheese() => MozzarellaCheese();
  @override
  List<Vegetables> createVegetables() => [ Spinach(), BlackOlives(), Eggplant()];
  @override
  Pepperoni createPepperoni() => PepperoniSlices();
  @override
  Clams createClams() => FrozenClams()
}
import 'Pizza.dart';

class AmericanCheesePizza extends Pizza {
  AmericanCheesePizza() {
    name = "American Cheese Pizza";
    dough = "Extra thick, cripsy dough";
    sauce = "Plum tomato sauce";

    toppings.add("Coarsely grated Mozzarella cheese");
  }

  @override
  void slice() => print("Slicing pizza into squared pieces");
}

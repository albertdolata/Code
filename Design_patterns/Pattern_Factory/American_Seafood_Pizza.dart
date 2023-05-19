import 'Pizza.dart';

class AmericanSeafoodPizza extends Pizza {
  AmericanSeafoodPizza() {
    name = "American Cheese Pizza";
    dough = "Extra thick, crispy dough";
    sauce = "Plum tomato sauce";

    toppings.add("Coarsely grated Mozzarella cheese");
    toppings.add("Frozen Clams from Chesapeake Bay");
  }

  @override
  void slice() => print("Slicing pizza into squared pieces");
}

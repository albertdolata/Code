import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';

class CheesePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  CheesePizza(this.ingredientFactory);

  @override
  void prepare(){
    print("Preparing: $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
  }
}
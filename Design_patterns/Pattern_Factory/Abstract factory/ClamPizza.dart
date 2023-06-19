import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';

class ClamPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  ClamPizza(this.ingredientFactory);

  @override
  void prepare(){
    print("Preparing: $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
     clams = ingredientFactory.createClams();
  }
}
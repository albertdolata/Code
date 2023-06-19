import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';

class VeggiePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  VeggiePizza(this.ingredientFactory);

  @override
  void prepare(){
    print("Preparing: $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    vegetables = ingredientFactory.createVegetables();
  }
}
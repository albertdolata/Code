import 'Pizza.dart';
import 'PizzaIngredientFactory.dart';

class PepperoniPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  PepperoniPizza(this.ingredientFactory);

  @override
  void prepare(){
    print("Preparing: $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    vegetables = ingredientFactory.createVegetables();
    pepperoni = ingredientFactory.createPepperoni();
  }
}
class ItalianPizzeria extends Pizzeria {
  Pizza createPizza(String item) {
    if (item == "cheese") {
      return ItalianCheesePizza;
    } else if (item == "vegggie") {
      return ItalianVeggiePizza;
    } else if (item == "clam") {
      return ItalianClamPizza;
    } else if (item == "pepperoni") {
      return ItalianPepperoniPizza;
    } else {
      return null;
    }
  }
}

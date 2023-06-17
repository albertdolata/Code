abstract class Pizza {
  String name = '';
  String dough = '';
  String sauce = '';
  List toppings = [];

  String getName() => name;

  void prepare() => print("Preparing $name");

  void bake() => print("Baking $name");

  void slice() => print("Slicing $name");

  void pack() => print("Packing $name");

  String toString() {
    StringBuffer? display = StringBuffer();
    display.write("----" + name + "----\n");
    display.write(dough + "\n");
    display.write(sauce + "\n");
    for (int i = 0; i < toppings.length; i++) {
      display.write(toppings[i] + "\n");
    }
    return display.toString();
  }
}
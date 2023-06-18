abstract class Pizza {
  String name = '';
  String dough = '';
  String sauce = '';
  List toppings = [];

  String getName() => name;

  void prepare() {
    print("Preparing $name");
    print("kneading the dough...");
    print("Adding the sauce...");
    print("Toppings: ");
    for (int i= 0; i < toppings.length; i++){
      print("  ${toppings[i]}");
    }
  }

  void bake() => print("Baking: 25 minutes at 350 degrees Celsius");

  void slice() => print("Slicing pizza into 8 pieces");

  void pack() => print("Packing pizza in the official box of our pizzeria chain");

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
class Pizza {
  String name;
  String dough;
  String sauce;
  List<String> toppings;

  void prepare() {
    print("Prepare: " + name);
    print("Kneading the dough...");
    print("Adding sauce...");
    print("Toppings: ");
    for (int i = 0; i < toppings.length; i++) {
      print(" " + toppings[i]);
    }
  }

  void bake() => print("Baking: 25 minutes at 350 Celsius degree");

  void slice() => print("Slicing pizza into 8 pieces");

  void pack() => print("Packing pizza in the official box of our Pizza chain");

  String getName() => name;
}

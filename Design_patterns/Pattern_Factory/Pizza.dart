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
    for (int i = 0; i < toppings.length, i++) {
      print(" " + toppings[i]);
    }
  }

}
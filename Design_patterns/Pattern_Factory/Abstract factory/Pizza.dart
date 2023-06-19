import 'Cheese.dart';
import 'Clams.dart';
import 'Dough.dart';
import 'Pepperoni.dart';
import 'Sauce.dart';
import 'Vegetables.dart';

abstract class Pizza {
  String? name;
  Dough? dough;
  Sauce? sauce;
  Cheese? cheese;
  Pepperoni? pepperoni;
  Clams? clams;
  List<Vegetables> vegetables = [];

  String? getName() => name;

  void setName(String name) {
    this.name = name;
  }

  void prepare();

  void bake() => print("Baking: 25 minutes at 350 degrees Celsius");

  void slice() => print("Slicing pizza into 8 pieces");

  void pack() => print("Packing pizza in the official box of our pizzeria chain");

  String toString() {
    StringBuffer? display = StringBuffer();
    display.write("----" + name! + "----\n");
    if (dough != null) {
      display.write(dough);
      display.write("\n");
    }
    if (sauce != null) {
      display.write(sauce);
      display.write("\n");
    }
    if (cheese != null) {
      display.write(cheese);
      display.write("\n");
    }
    if (vegetables != []){
      for (int i = 0; i < vegetables.length; i++){
        display.write(vegetables[i]);
        if ( i < vegetables.length - 1) {
          display.write(', ');
        }
      }
      display.write('\n');
    }
    if (clams != null) {
      display.write(clams);
      display.write("\n");
    }
    if (pepperoni != null) {
      display.write(pepperoni);
      display.write("\n");
    }
    return display.toString();
  }
}
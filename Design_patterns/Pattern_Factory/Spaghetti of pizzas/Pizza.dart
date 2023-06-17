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
  List<Vegetables> vegetables = [];
  Cheese? cheese;
  Pepperoni? pepperoni;
  Clams? clams;


  void prepare();

  void bake() => print("Baking: 25 minutes at 350 Celsius degree");

  void slice() => print("Slicing pizza into 8 pieces");

  void pack() => print("Packing pizza in the official box of our Pizza chain");

  void setName(String name) => this.name = name;

  String? getName() => name;

  @override
   String toString() => "$name on a $dough dough with: $";
}

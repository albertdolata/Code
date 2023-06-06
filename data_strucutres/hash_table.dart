import 'hash_data.dart';

class HashTable {
  List<int?> table = List.filled(20, null, growable: false);
  int index = 0;

  void insert (int data) {
    index = data % 20;
    if(table[index] == null){
      table[index] = data;
    } else {
      while (table[index] != null){
        index++;
        if(index > 20) {
          index = 0;
        }
      }
      table[index] = data;
    }
    print("Data inserted at $index index of the list");
  }

}
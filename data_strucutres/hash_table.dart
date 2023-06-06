import 'hash_data.dart';

class HashTable {
  List<Data?> table = List.filled(20, null, growable: false);
  int index = 0;

  int hashIndex(int key) => key % table.length;

  void insert (Data data) {
    index = hashIndex(data.key);
    if(table[index] == null){
      table[index] = data;
    } else {
      while (table[index] != null){
        index++;
        if(index > table.length) {
          index = 0;
        }
      }
      table[index] = data;
    }
    print("Data inserted at $index index of the list");
  }

}
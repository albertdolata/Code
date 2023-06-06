import 'hash_data.dart';

class HashTable {
  List<dynamic> table = List.filled(20, null, growable: false);
  int index = 0;

  int hashIndex(Data data) => data.key % table.length;

  void insert (Data data) {
    index = hashIndex(data);
    if(table[index] == null){
      table[index] = data.data;
    } else {
      while (table[index] != null){
        index++;
        if(index > table.length) {
          index = 0;
        }
      }
      table[index] = data.data;
    }
    print("Data inserted at $index index of the list");
  }

}
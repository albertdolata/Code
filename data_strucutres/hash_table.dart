import 'hash_data.dart';

class HashTable {
  List<Data?> table = List.filled(20, null, growable: false);
  int index = 0;

  int hashIndex(int key) => key % table.length;

  void insert(Data data) {
    index = hashIndex(data.key);
    if (table[index] == null) {
      table[index] = data;
    } else {
      while (table[index] != null) {
        index++;
        if (index > table.length) {
          index = 0;
        }
      }
      table[index] = data;
    }
    print("Data inserted at $index index of the list");
  }

  Data? search(int key) {
    index = hashIndex(key);
    Data? currentData = table[index];
    if (currentData?.key == key) {
      return currentData;
    } else {
      while (currentData?.key != key) {
        if (index > 20) {
          index = 0;
          currentData = table[index];
        } else {
          index++;
          currentData = table[index];
        }
      }
      return currentData;
    }
  }

  void deleteData(int key) {
    index = table.indexOf(search(key));
    table[index] = null;
    print("Data at $index deleted");
  }
}

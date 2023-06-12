import 'hash_data.dart';

class HashTable {
  List<HashData?> list = List.filled(20, null, growable: false);

  int _hash(int key) {
    int index = key % list.length;
    return index;
  }

  void addData(HashData data) {
    int index = _hash(data.key);
    if (list[index] == null) {
      list[index] = data;
    } else {
      while (list[index] != null) {
        index++;
        if (index > 20) {
          index = 0;
        }
      }
      list[index] = data;
    }
    print("Added data ${list[index]?.data} at $index index");
  }

  HashData? searchData(int key) {
    int index = _hash(key);
    if (list[index]?.key == key) {
      return list[index];
    } else {
      index = 0;
      while (list[index]?.key != key) {
        index++;
      }
      return list[index];
    }
  }

  void deleteData(int key) {
    int index = list.indexOf(searchData(key));
    list[index] = null;
    print("Data at index $index deleted");
  }
}

import 'hash_data.dart';

class HashTable {
  List<HashData?> list = List.filled(5, null, growable: false);
  int takenIndexes = 0;

  int _hash(int key) {
    if(key >= 0) {
      int index = key % list.length;
      return index;
    } else {
      return -1;
    }
  }

  void addData(HashData data) {
    int index = _hash(data.key);
    if (list[index] == null && takenIndexes <= list.length) {
      list[index] = data;
      takenIndexes++;
      print("Added data ${list[index]?.data} at $index index");
    } else if (takenIndexes < list.length){
      while (list[index] != null) {
        index++;
        if (index > list.length) {
          index = 0;
        }
      }
        list[index] = data;
        takenIndexes++;
        print("Added data ${list[index]?.data} at $index index");
      } else {
       print('All indexes in table are taken!');
      }
    }

  HashData? searchData(int key) {
    int index = _hash(key);
    if (index < 0 ) {
      return null;
    } else {
      if (list[index]?.key == key) {
        return list[index];
      } else {
        index = 0;
        while (list[index]?.key != key) {
          if (index == list.length){
            index++;
            break;
          }
          index++;
        }
        if (index > list.length){
          return null;
        } else {
          return list[index];
        }
      }
    }
  }

  void deleteData(int key) {
    HashData? target = searchData(key);
    if (target == null) {
      print('Wrong key!');
    } else {
      int index = list.indexOf(target);
      list[index] = null;
      print("Data at index $index deleted");
    }
  }
}

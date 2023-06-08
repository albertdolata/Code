import 'hash_data.dart';
import 'hash_table.dart';

void main() {
  HashTable hashTable = HashTable();
  Data pizza = Data('pepperoni', 30);
  Data age = Data(43, 99);
  Data car = Data('BMW', 5);
  Data name = Data('Zbigniew', 998);
  Data favouriteNumber = Data(7, 50);
  Data fruit = Data('apple', 20);
  Data serialNumber = Data (67863, 1);

  hashTable.insert(pizza);
  hashTable.insert(age);
  hashTable.insert(car);
  hashTable.insert(name);
  hashTable.insert(favouriteNumber);
  hashTable.insert(fruit);
  hashTable.insert(serialNumber);

  hashTable.search(50);
  hashTable.search(30);
  hashTable.search(1);
  hashTable.search(998);


  hashTable.deleteData(50);
  hashTable.deleteData(30);
  hashTable.deleteData(1);
  hashTable.deleteData(998);
}
import 'hash_data.dart';
import 'hash_table.dart';

void main() {
  HashTable hashTable = HashTable();

  hashTable.addData(HashData(20, "Red"));
  hashTable.addData(HashData(23, 23.4));
  hashTable.addData(HashData(777, 2));
  hashTable.addData(HashData(43, "Green"));
  hashTable.addData(HashData(1, "Yellow"));
  hashTable.addData(HashData(20, "Zbigniew"));
  hashTable.addData(HashData(12, 44));

  print("--------");

  hashTable.deleteData(-5);
}
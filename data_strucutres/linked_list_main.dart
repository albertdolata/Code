import '../book.dart';
import 'Linked_list.dart';

void main() {
  // LinkedList linkedList = LinkedList();
  //
  // linkedList.insertNewData(8);
  // linkedList.insertNewData(1);
  // linkedList.insertNewData(43);
  // linkedList.insertNewData(45);
  // linkedList.insertNewData(23);
  //
  // // linkedList.printLinkedList();
  //
  // // linkedList.searchData(23);
  // //  linkedList.searchPreviousData(45);
  // linkedList.deleteData(24);
  //
  // linkedList.printLinkedList();
  LinkedList linkedList = LinkedList();

  linkedList.insertNewData(Book(1, 40.1, "Dobra książka"));
  linkedList.insertNewData(Book(2, 23.3, "Tańsza książka"));
  linkedList.insertNewData(Book(3, 43.3, "Czarny długopis"));
  linkedList.insertNewData(Book(4, 93.3, "Wesołe miasteczko"));
  linkedList.insertNewData(Book(5, 63.3, "Niebiski ptak"));
  linkedList.insertNewData(Book(6, 13.3, "Czerwony samochód"));

  linkedList.printLinkedList();
  print("------------------");
  linkedList.deleteData(Book(2, 23.3, "Tańsza książka"));
  linkedList.printLinkedList();
}
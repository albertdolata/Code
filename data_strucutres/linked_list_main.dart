import 'Linked_list.dart';

void main() {
  LinkedList linkedList = LinkedList();

  linkedList.insertNewData(8);
  linkedList.insertNewData(1);
  linkedList.insertNewData(43);
  linkedList.insertNewData(45);
  linkedList.insertNewData(23);

  // linkedList.printLinkedList();

  // linkedList.searchData(23);
  //  linkedList.searchPreviousData(45);
  linkedList.deleteData(8);

  linkedList.printLinkedList();
}
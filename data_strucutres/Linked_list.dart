import 'Node.dart';

class LinkedList {
  Node? head;

  void initializeHead(dynamic data) {
    head = Node(data);
  }

  void insertNewData(dynamic newData) {
    if (head == null) {
      initializeHead(newData);
    }else {
      Node newNode = Node(newData);
      Node? last = head;
      while (last?.next != null) {
        last = last?.next;
      }
      last?.next = newNode;
    }
  }

  void searchData(dynamic target) {
    Node? current = head;
    while (current?.next != null){
     if(current?.data == target){
       print("Found data: ");
       return print(current?.data);
     }else {
       current = current?.next;
     }
    }
    if(current?.next == null){
      print('Data not found');
    }
  }

  void printLinkedList() {
    Node? printNode = head;
    while (printNode != null) {
      print(printNode.data);
      printNode = printNode.next;
    }
  }
}

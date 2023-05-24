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
}

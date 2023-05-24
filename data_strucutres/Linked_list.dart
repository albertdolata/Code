import 'Node.dart';

class LinkedList {
  Node? head;

  void initializeHead(dynamic data) {
    head = Node(data);
  }

  void insertData(Node previousNode, dynamic data) {
    if(previousNode == null) {
      initializeLinkedList(data);
    }
  }
}

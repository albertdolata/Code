import 'Node.dart';

class LinkedList {
  Node? head;

  void initializeLinkedList(dynamic data){
    Node headNode = Node(data);
    return headNode.data;
  }

  void insertData(Node previousNode, dynamic data) {
    if(previousNode == null) {
      initializeLinkedList(data);
    }
  }
}

import 'Node.dart';

class Stack {
  Node? head;

  void push(dynamic data) {
    if (head == null) {
      head?.data = data;
    } else {
      Node? newNode = Node(data);
      Node? lastNode = head;
      while (lastNode != null) {
        lastNode = lastNode.next;
      }
      lastNode?.next = newNode;
    }
  }
}

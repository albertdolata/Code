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

  Node? pop() {
    Node? currentNode = head;
    Node? lastNode;
    Node? beforeLastNode = head;
    while (currentNode?.next != null) {
      currentNode = currentNode?.next;
    }
    lastNode = currentNode;
    while (beforeLastNode?.next != lastNode) {
      beforeLastNode = beforeLastNode?.next;
    }
    beforeLastNode?.next = null;
    return lastNode?.data;
  }
}

import 'Node.dart';

class Stack {
  Node? head;

  void push(dynamic data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node? newNode = Node(data);
      Node? lastNode = head;
      while (lastNode?.next != null) {
        lastNode = lastNode?.next;
      }
      lastNode?.next = newNode;
    }
  }

  dynamic pop() {
    Node? currentNode = head;
    Node? lastNode;
    Node? beforeLastNode = head;
    if(head?.next == null) {
      lastNode = head;
      head = null;
      return lastNode?.data;
    } else {
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
}

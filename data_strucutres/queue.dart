import 'Node.dart';

class Queue {
  Node? head;

  void enqueue(dynamic data) {
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

  dynamic dequeue() {
    dynamic returnData = head?.data;
    head = head?.next;
    return returnData;
  }
}

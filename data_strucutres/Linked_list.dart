import 'Node.dart';

class LinkedList {
  dynamic head = null;
  dynamic tail;
  dynamic pointer;
  Node node = Node();

  void insertData(dynamic data) {
    if(head == null){
      head = data;
      pointer = data;
      node.data = data;
      tail = data;
    }else {
      pointer = data;
      node.next = pointer;
      node.data = data;
      tail = data;
    }
  }
}

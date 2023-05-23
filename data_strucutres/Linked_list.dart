import 'Node.dart';

class LinkedList {

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

import 'Node.dart';

class LinkedList {
  Node? head;

  void initializeHead(dynamic data) {
    head = Node(data);
  }

  void insertNewData(dynamic newData) {
    if (head == null) {
      initializeHead(newData);
    } else {
      Node newNode = Node(newData);
      Node? last = head;
      while (last?.next != null) {
        last = last?.next;
      }
      last?.next = newNode;
    }
  }

  Node? searchData(dynamic target) {
    Node? current = head;
    Node? found;
    while (current != null) {
      if (current.data == target) {
        found = current;
        break;
      } else {
        current = current.next;
      }
    }
    return found;
  }

  Node? searchPreviousData(dynamic target) {
    Node? current = searchData(target);
    Node? previous = head;
    while (previous != current) {
      if (previous?.next == current) {
        return previous;
      } else {
        previous = previous?.next;
      }
    }
    return null;
  }

  void deleteData(dynamic target) {
    Node? current = searchData(target);
    if (current == null) {
      return print('Data not found.');
    }
    Node? previous = searchPreviousData(target);
    if (head?.data == target) {
      head = head?.next;
    } else if (current.next == null) {
      previous?.next = null;
    } else {
      previous?.next = current.next;
      current.next = null;
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

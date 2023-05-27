import 'queue.dart';

void main() {
  Queue queue = Queue();
  
  queue.enqueue(45);
  queue.enqueue(12);
  queue.enqueue(0);
  queue.enqueue(68);
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();

}
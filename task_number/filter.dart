abstract class Filter {
  String _numbers = '';

  Filter(this._numbers);

  List convertStringToList() => _numbers.split("");
  
  bool isEven(List numbers, int i) => numbers[i] % 2 == 0;

  List filterNumbers(List numbers);

  int addUpNumbers(List numbers);

  String createMathOperationOfAddNumbers();

  void showNumbers();

  void showSumOfNumbers();
}
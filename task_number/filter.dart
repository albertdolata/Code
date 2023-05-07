abstract class Filter {
  String _numbers = '';

  Filter(this._numbers);

  List convertStringToList(){
    List numbers = [];
    for (int i = 0; i < _numbers.length; i++) {
      numbers.add(int.parse(_numbers[i]));
    }
    return numbers;
  }

  bool isEven(List numbers, int i) => numbers[i] % 2 == 0;

  List filterNumbers(List numbers);

  int addUpNumbers();

  String createMathOperationOfAddNumbers();

  void showNumbers();

  void showSumOfNumbers();
}
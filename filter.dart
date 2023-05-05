abstract class Filter {
  String _numbers = '';

  Filter(this._numbers);

  List convertStringToList(){
    List numbers =[];
    for (int i = 0; i < _numbers.length; i++) {
      numbers.add(int.parse(_numbers[i]));
    }
    return numbers;
  }

  bool isEven(List numbers, int i) => numbers[i] % 2 == 0;

  List filterNumbers();

  int addUpNumbers();

  String operationSumOfNumbers();

  void showNumbers();

  void showSumOfNumbers();
}
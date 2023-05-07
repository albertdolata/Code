import 'filter.dart';

class EvenFilter extends Filter {
  EvenFilter(String numbers) : super(numbers);

  @override
  List filterNumbers(List numbers){
    List evenNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (isEven(numbers, i)) {
        evenNumbers.add(numbers[i]);
      }
    }
    return evenNumbers;
  }

  @override
  int addUpNumbers(List numbers) {
    int number = 0;
    int sumOfEvenNumbers = 0;
    for (int i = 0; i < numbers.length; i++) {
      number = numbers[i];
      sumOfEvenNumbers += number;
    }
    return sumOfEvenNumbers;
  }

  @override
  String createMathOperationOfAddNumbers(){
    String operation = '';
    for (int i = 0; i < filterNumbers(convertStringListToIntList()).length; i++) {
      operation += '+ ${filterNumbers(convertStringListToIntList())[i]} ';
    }
    return operation.substring(1);
  }

  @override
  void showNumbers() {
    print('Even numbers : ${filterNumbers(convertStringListToIntList()).join(', ')}');
  }
  
  @override
  void showSumOfNumbers() {
    print('Sum of even numbers:${createMathOperationOfAddNumbers()} '
        '= ${addUpNumbers(filterNumbers(convertStringListToIntList()))}');
  }
}

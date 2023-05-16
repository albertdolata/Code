import 'filter.dart';

class EvenFilter extends Filter {
  EvenFilter(String numbers) : super(numbers);

  @override
  List filterNumbers(List numbers) {
    List evenNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (isEven(numbers, i)) {
        evenNumbers.add(numbers[i]);
      }
    }
    return evenNumbers;
  }

  @override
  num addUpNumbers(List numbers) {
    num sumOfEvenNumbers = 0;
    numbers.forEach((element) {sumOfEvenNumbers += element;});
    return sumOfEvenNumbers;
  }

  @override
  String createMathOperationOfAddNumbers(List numbers) {
    String operation = '';
    for (int i = 0; i < numbers.length; i++) {
      operation += '+ ${numbers[i]} ';
    }
    return operation.substring(1);
  }

  @override
  void showNumbers() {
    print('Even numbers : ${filterNumbers
      (convertStringListToIntList()).join(', ')}');
  }

  @override
  void showSumOfNumbers() {
    print('Sum of even numbers:${createMathOperationOfAddNumbers
      (filterNumbers(convertStringListToIntList()))} '
        '= ${addUpNumbers(filterNumbers(convertStringListToIntList()))}');
  }
}

import 'filter.dart';

class OddFilter extends Filter {
  OddFilter(String numbers) : super (numbers);

  @override
  List filterNumbers(List numbers) {
    List oddNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (!isEven(numbers, i)) {
        oddNumbers.add(numbers[i]);
      }
    }
    return oddNumbers;
  }

  @override
  num addUpNumbers(List numbers) {
    num sumOfOddNumbers = 0;
    numbers.forEach((element) {sumOfOddNumbers += element;});
    return sumOfOddNumbers;
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
    print('Odd numbers : ${filterNumbers
      (convertStringListToIntList()).join(', ')}');
  }

  @override
  void showSumOfNumbers() {
      print('Sum of odd numbers:${createMathOperationOfAddNumbers
        (filterNumbers(convertStringListToIntList()))} '
          '= ${addUpNumbers(filterNumbers(convertStringListToIntList()))}');
    }
}
import 'filter.dart';

class OddFilter extends Filter{
  OddFilter(String numbers) : super (numbers);

  @override
  List filterNumbers(List numbers){
    List oddNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (!isEven(numbers, i)) {
        oddNumbers.add(numbers[i]);
      }
    }
    return oddNumbers;
  }

  @override
  int addUpNumbers(List numbers) {
    int number =0;
    int sumOfOddNumbers = 0;
    for (int i = 0; i < numbers.length; i++) {
      number = numbers[i];
      sumOfOddNumbers += number;
    }
    return sumOfOddNumbers;
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
    print('Odd numbers : ${filterNumbers(convertStringListToIntList()).join(', ')}');
  }

  @override
  void showSumOfNumbers() {
      print('Sum of odd numbers:${createMathOperationOfAddNumbers()} '
          '= ${addUpNumbers(filterNumbers(convertStringListToIntList()))}');
    }
}
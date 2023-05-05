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
  int addUpNumbers() {
    int number =0;
    int sumOfOddNumbers = 0;
    for (int i = 0; i < filterNumbers(convertStringToList()).length; i++) {
      number = filterNumbers(convertStringToList())[i];
      sumOfOddNumbers += number;
    }
    return sumOfOddNumbers;
  }
}
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
}
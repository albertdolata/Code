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
  };
}

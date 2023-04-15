import 'dart:io';
import 'filter.dart';
import 'binder.dart';

void main() {
  String userNumbers = getNumbers();
  String sortedNumbers = filter(userNumbers);
  print(sortedNumbers);
}

String getNumbers() {
  print('Enter numbers');
  String userNumbers = stdin.readLineSync() ?? '';

  return userNumbers;
}

bool isEven(int number) {
  return number % 2 == 0;
}

String setEvenNumbers(int number, String even) {
  if (isEven(number)) {
    even += ' $number';
  }
  return even;
}

String setOddNumbers(int number, String odd) {
  if (!isEven(number)) {
    odd += ' $number';
  }
  return odd;
}

String additionEvenNumbers(int number, String additionOfEvenNumbers) {
  if (isEven(number)) {
    additionOfEvenNumbers += '+$number';
  }
  return additionOfEvenNumbers;
}

String additionOddNumbers(int number, String additionOfOddNumbers) {
  if (!isEven(number)) {
    additionOfOddNumbers += '+$number';
  }
  return additionOfOddNumbers;
}

int sumEvenNumbers(int number, int sum) {
  if (isEven(number)) {
    sum += number;
  }
  return sum;
}

int sumOddNumbers(int number, int sum) {
  if (!isEven(number)) {
    sum += number;
  }
  return sum;
}

String toPrint(String evenNumbers, String additionOfEvenNumbers, int sumEven,
    String oddNumbers, String additionOfOddNumbers, int sumOdd) {
  String output = 'Even numbers:$evenNumbers'
      '\nSum of even number:${additionOfEvenNumbers.substring(1)}=$sumEven'
      '\nOdd numbers:$oddNumbers'
      '\nSum of odd numbers:${additionOfOddNumbers.substring(1)}=$sumOdd';
  return output;
}

String filter(String numbers ){
  String evenNumbers = '';
  String oddNumbers = '';
  String additionOfEvenNumbers = '';
  String additionOfOddNumbers = '';
  int sumEven = 0;
  int sumOdd = 0;
    for (int i = 0; i < numbers.length; i++) {
    int singleNumber = int.parse(numbers[i]);
    isEven(singleNumber);
    evenNumbers = setEvenNumbers(singleNumber, evenNumbers);
    oddNumbers = setOddNumbers(singleNumber, oddNumbers);
    additionOfEvenNumbers =
        additionEvenNumbers(singleNumber, additionOfEvenNumbers);
    additionOfOddNumbers =
        additionOddNumbers(singleNumber, additionOfOddNumbers);
    sumEven = sumEvenNumbers(singleNumber, sumEven);
    sumOdd = sumOddNumbers(singleNumber, sumOdd);
    }
    String filteredNumbers = toPrint(evenNumbers, additionOfEvenNumbers, sumEven,
    oddNumbers, additionOfOddNumbers, sumOdd);

    return filteredNumbers;
}
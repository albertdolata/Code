import 'dart:io';

void main() {
  print('Enter numbers');
  String stringOfNumbers = stdin.readLineSync() ?? '';
  String evenNumbers = '',
      oddNumbers = '',
      additionOfEvenNumbers = '',
      additionOfOddNumbers = '';
  int sumOfEvenNumbers = 0, sumOfOddNumbers = 0;
  int length = stringOfNumbers.length;
  for (int i = 0; i < length; i++) {
    int tempMemory = int.parse(stringOfNumbers[i]);
    if (tempMemory % 2 == 0) {
      evenNumbers += '$tempMemory ';
      additionOfEvenNumbers += '+$tempMemory';
      sumOfEvenNumbers += tempMemory;
    } else {
      oddNumbers += '$tempMemory ';
      additionOfOddNumbers += '+$tempMemory';
      sumOfOddNumbers += tempMemory;
    }
  }
  print('Even numbers:$evenNumbers');
  print(
      'Sum of even number:${additionOfEvenNumbers.substring(1)}=$sumOfEvenNumbers');
  print('Odd numbers:$oddNumbers');
  print(
      'Sum of odd numbers:${additionOfOddNumbers.substring(1)}=$sumOfOddNumbers');
}

bool isNumberEven(int number) {
  return number % 2 == 0;
}

String addEvenNumbers(int number, String evenNumbers) {
  if (isNumberEven(number)) {
    evenNumbers += '$number ';
    return evenNumbers;
  }
  return '';
}

String addOddNumbers(int number, String oddNumbers){
  if(!isNumberEven(number)){
    oddNumbers += '$number';
    return oddNumbers;
  }
  return '';
}

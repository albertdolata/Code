import 'dart:io';

void main() {
  String userNumbers = getNumbers();
  String evenNumbers = '',
      oddNumbers = '',
      additionOfEvenNumbers = '',
      additionOfOddNumbers = '';
  int sumOfEvenNumbers = 0, sumOfOddNumbers = 0;
  for (int i = 0; i < userNumbers.length; i++) {
    int singleNumber = int.parse(userNumbers[i]);
    if (singleNumber % 2 == 0) {
      evenNumbers += '$singleNumber ';
      additionOfEvenNumbers += '+$singleNumber';
      sumOfEvenNumbers += singleNumber;
    } else {
      oddNumbers += '$singleNumber ';
      additionOfOddNumbers += '+$singleNumber';
      sumOfOddNumbers += singleNumber;
    }
  }
  printOutput(evenNumbers, oddNumbers, additionOfEvenNumbers, additionOfOddNumbers, sumOfEvenNumbers, sumOfOddNumbers);
}

String getNumbers(){
  print('Enter numbers');
  String userNumbers = stdin.readLineSync() ?? '';

  return userNumbers;
}

bool isNumberEven(int number) {
  return number % 2 == 0;
}

int addEvenNumbers(int number, int evenNumbers) {
  if (isNumberEven(number)) {
    evenNumbers += number;
    return evenNumbers;
  }
  return 0;
}

int addOddNumbers(int number, int oddNumbers){
  if(!isNumberEven(number)){
    oddNumbers += number;
    return oddNumbers;
  }
  return 0;
}

String operationOnEvenNumbers(int number, String additionOfEvenNumbers){
  if(isNumberEven(number)){
    additionOfEvenNumbers += '+$number';
    return additionOfEvenNumbers;
  }
  return '';
}

String operationOnOddNumbers(int number, String additionOfOddNumbers){
  if(!isNumberEven(number)){
    additionOfOddNumbers += '+$number';
    return additionOfOddNumbers;
  }
  return '';
}

void printOutput(String evenNumbers, String oddNumbers, String additionOfEvenNumbers,
    String additionOfOddNumbers, int sumOfEvenNumbers, int sumOfOddNumbers){
  print('Even numbers:$evenNumbers');
  print(
      'Sum of even number:${additionOfEvenNumbers.substring(1)}=$sumOfEvenNumbers');
  print('Odd numbers:$oddNumbers');
  print(
      'Sum of odd numbers:${additionOfOddNumbers.substring(1)}=$sumOfOddNumbers');
}
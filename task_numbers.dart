import 'dart:io';

void main() {
  String userNumbers = getNumbers();
  String evenNumbers = '',
      oddNumbers = '',
      additionOfEvenNumbers = '',
      additionOfOddNumbers = '';
  int sumOfEvenNumbers = 0, sumOfOddNumbers = 0;
  for (int i = 0; i < userNumbers.length; i++) {
    int tempMemory = int.parse(userNumbers[i]);
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

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
    isEven(singleNumber);
    evenNumbers = '${setEvenNumbers(singleNumber, evenNumbers)}';
    oddNumbers = '${setOddNumbers(singleNumber, oddNumbers)}';
    additionOfEvenNumbers = '${additionEvenNumbers(singleNumber, additionOfEvenNumbers)}';
    additionOfOddNumbers = '${additionOddNumbers(singleNumber, additionOfOddNumbers)}';
  //   if (isEven(singleNumber)) {
  //     evenNumbers += '$singleNumber ';
  //     additionOfEvenNumbers += '+$singleNumber';
  //     sumOfEvenNumbers += singleNumber;
  //   } else {
  //     oddNumbers += '$singleNumber ';
  //     additionOfOddNumbers += '+$singleNumber';
  //     sumOfOddNumbers += singleNumber;
  //   }
   }
  printOutput(evenNumbers, oddNumbers, additionOfEvenNumbers,
      additionOfOddNumbers, sumOfEvenNumbers, sumOfOddNumbers);
}

String getNumbers(){
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

String setOddNumbers(int number, String odd){
  if(!isEven(number)){
    odd += ' $number';
  }
  return odd;
}

String additionEvenNumbers(int number, String additionOfEvenNumbers){
  if(isEven(number)){
    additionOfEvenNumbers += '+$number';
  }
  return additionOfEvenNumbers;
}

String additionOddNumbers(int number, String additionOfOddNumbers){
  if(!isEven(number)){
    additionOfOddNumbers += '+$number';
  }
  return additionOfOddNumbers;
}

void printOutput(String evenNumbers, String oddNumbers, String additionOfEvenNumbers,
    String additionOfOddNumbers, int sumOfEvenNumbers, int sumOfOddNumbers) {
  print('Even numbers:$evenNumbers'
      '\nSum of even number:${additionOfEvenNumbers.substring(1)}=$sumOfEvenNumbers'
      '\nOdd numbers:$oddNumbers'
      '\nSum of odd numbers:${additionOfOddNumbers.substring(1)}=$sumOfOddNumbers'
  );
}
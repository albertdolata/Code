import 'dart:io';

void main(){
  print('Enter numbers');
  String stringOfNumbers = stdin.readLineSync() ?? '';
  String evenNumbers, oddNumbers, sumOfEvenNumbers, sumOfOddNumbers;
  int length = stringOfNumbers.length;
  for(int i=0; i < length; i++){
    int tempMemory = int.parse(stringOfNumbers[i]);
    print(tempMemory);
  }
}
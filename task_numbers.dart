import 'dart:io';

void main(){
  print('Enter numbers');
  String stringOfNumbers = stdin.readLineSync() ?? '';
  String evenNumbers ='', oddNumbers = '';
  int sumOfEvenNumbers = 0, sumOfOddNumbers = 0;
  int length = stringOfNumbers.length;
  for(int i=0; i < length; i++){
    int tempMemory = int.parse(stringOfNumbers[i]);
    if( tempMemory % 2 == 0 ){
    evenNumbers += '$tempMemory ';
    sumOfEvenNumbers += tempMemory;
    }else{
    oddNumbers += '$tempMemory ';
    sumOfOddNumbers += tempMemory;
  }
  }
  print('Even numbers:$evenNumbers');
  print('Sum of even number:$sumOfEvenNumbers');
  print('Odd numbers:$oddNumbers');
  print('Sum of odd numbers:$sumOfOddNumbers');
}
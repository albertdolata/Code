import 'dart:io';

void main(){
  print('Enter numbers');
  String stringOfNumbers = stdin.readLineSync() ?? '';
  String evenNumbers ='', oddNumbers = '', sumOfEvenNumbers = '', sumOfOddNumbers = '';
  int length = stringOfNumbers.length;
  for(int i=0; i < length; i++){
    int tempMemory = int.parse(stringOfNumbers[i]);
    if( tempMemory % 2 == 0 ){
    evenNumbers += ' $tempMemory';
    }else{
    oddNumbers += ' $tempMemory';
  }
  }
  print('Even numbers: $evenNumbers');
  print('Odd numbers: $oddNumbers');
}
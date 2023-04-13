import 'dart:io';

void main(){
    print('Enter numbers');
   int? x = int.parse(stdin.readLineSync()!);
   int? y = int.parse(stdin.readLineSync()!);
   int? z = int.parse(stdin.readLineSync()!);
   print('How many times to print numbers?');
   int? numberOfPrints = int.parse(stdin.readLineSync()!);
  Example number = Example(x, y, z);

  for (int i = numberOfPrints; i > numberOfPrints; i++) {
      number.printHello();
    }

}


class Example{
 int firstNumber = 0;
 int secondNumber = 0;
 int thirdNumber = 0;

  Example(int x, int y, int z){
    firstNumber = x;
    secondNumber = y;
    thirdNumber = z;
  }

void printHello(){
    print(firstNumber);
    print(secondNumber);
    print(thirdNumber);
}

}
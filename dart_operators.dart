import 'dart:io';

void main(){
    //taking input from user
    print('Enter number a');
    int? a = int.parse(stdin.readLineSync()!);

    print('Enter number b');
    int? b = int.parse(stdin.readLineSync()!);

    //use of arithmetical operators
    print('Sum of a and b is ${a + b}');
    print('The difference between a and b is ${a - b}');
    print('The negation of a is ${-a} and b is ${-b}');
    print('The product of a and b is ${a * b}');
    print('The quotient of a and b is ${a / b}');
    print('The quotient of a and b is ${a ~/ b} (result as integer)');
    print('The reminder of a and b is ${a % b}');
}
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

    //use of relational operators
    print('a is greater than b is ${a>b}');
    print('a is smaller than b is ${a<b}');
    print('a is greater or equal to b is ${a>=b}');
    print('a is smaller or equal to b is ${a<=b}');
    print('a is equal to b is ${a==b}');
    print('a is not equal to b is ${a!=b}');

    //use of test type operators
    print('Is b a double? Answer: ${b is double}  ');
    print('Is a a String? Answer: ${a is String}  ');
    print('a is not an String? Answer: ${a is! String}  ');

    //use of bitwise operators
    print('Bitwise operation AND on a and b ${a & b}  ');
    print('Bitwise operation OR on a and b ${a | b}  ');
    print('Bitwise operation XOR on a and b ${a ^ b}  ');
    print('Bitwise operation NOT on a ${~a} and b ${~b}  ');
    print('Bitwise operation left shift on a ${a << b}  ');
    print('Bitwise operation right shift on a ${a >> b}  ');
}
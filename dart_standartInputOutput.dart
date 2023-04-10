//importing dart:io file
import 'dart:io';

void main(){
      //asking user for a name
    print('Hello, what is your age?');

    //taking input from user
    int? age = int.parse(stdin.readLineSync()!);

    //creating output by using print() function
    print('Now I know that your age is $age');
}
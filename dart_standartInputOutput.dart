//importing dart:io file
import 'dart:io';

void main(){
    //asking user for a age
    print('Hello, what is your age?');

    //taking int input from user
    int? age = int.parse(stdin.readLineSync()!);

    //creating output by using print() statement
    print('Now I know that your age is $age');

    //asking user for a name
    print('And what is your name?');

    //taking String input from user
    String? name = stdin.readLineSync();
    
    //creating output by using stdout.write() statement
    stdout.write('So, your name is $name and you are $age years old. ');
}
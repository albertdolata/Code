import 'dart:io';
import 'filter.dart';

void main() {
  String userNumbers = getNumbers();
  SumFilter numberFilter = SumFilter(userNumbers);
  print('${numberFilter.filterNumbers()} \n${numberFilter.addUpNumbers()}');
}

String getNumbers() {
  print('Enter numbers');
  String userNumbers = stdin.readLineSync() ?? '';

  return userNumbers;
}
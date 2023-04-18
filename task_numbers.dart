import 'dart:io';
import 'sum_filter.dart';

void main() {
  String userNumbers = getNumbers();
  SumFilter sumFilter = SumFilter(userNumbers);
  print(sumFilter.filterNumbers());
  print(sumFilter.addUpNumbers());
}

String getNumbers() {
  print('Enter numbers');
  String userNumbers = stdin.readLineSync() ?? '';
  userNumbers = userNumbers.replaceAll(RegExp('[^0-9]'), '');

  return userNumbers;
}
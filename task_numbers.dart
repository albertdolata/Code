import 'dart:io';
import 'even_filter.dart';
import 'odd_filter.dart';

void main() {
  String userNumbers = getNumbers();
  SumFilter sumFilter = SumFilter(userNumbers);
  sumFilter.showEvenNumbers();
  sumFilter.showOddNumbers();
  sumFilter.showSumOfEvenNumbers();
  sumFilter.showSumOfOddNumbers();
}

String getNumbers() {
  print('Enter numbers');
  String userNumbers = stdin.readLineSync() ?? '';
  userNumbers = userNumbers.replaceAll(RegExp('[^0-9]'), '');

  return userNumbers;
}
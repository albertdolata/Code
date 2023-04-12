import 'dart:io';

void main() {
  print('Enter sentence');
  String sentence = stdin.readLineSync() ?? '';
  String reversedSentence = '';
  int length = sentence.length;
  for (int i = length - 1; i >= 0; i--) {
    reversedSentence += sentence[i];
  }
  print(reversedSentence);
}

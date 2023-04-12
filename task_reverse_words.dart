import 'dart:io';

void main() {
  String sentence = getSentence();
  String reversedSentence = reverseSentence(sentence);
  print(reversedSentence);
}

String getSentence(){
  print('Enter sentence');
  String userSentence = stdin.readLineSync() ?? '';
  return userSentence;
}

String reverseSentence(String sentence){
  String reversedSentence ='';
  for (int i = sentence.length - 1; i >= 0; i--) {
    reversedSentence += sentence[i];
  }
  return reversedSentence;
}
class SumFilter {
  String _numbers = '';

  SumFilter(this._numbers);

  List convertStringToList(){
    List numbers =[];
    for (int i = 0; i < _numbers.length; i++) {
      numbers.add(int.parse(_numbers[i]));
    }
    return numbers;
  }

  List filterEvenNumbers(List numbers) {
    List evenNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 == 0) {
        evenNumbers.add(numbers[i]);
      }
    }
    return evenNumbers;
  }

  List filterOddNumbers(List numbers) {
    List oddNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 == 1) {
        oddNumbers.add(numbers[i]);
      }
    }
    return oddNumbers;
  }

  void showEvenNumbers() {
    print('Even numbers : ${filterEvenNumbers(convertStringToList()).join(', ')}');
  }

  void showOddNumbers() {
    print('Odd numbers : ${filterOddNumbers(convertStringToList()).join(', ')}');
  }

  int addUpEvenNumbers() {
    int number = 0;
    int sumOfEvenNumbers = 0;
    for (int i = 0; i < filterEvenNumbers(convertStringToList()).length; i++) {
       number = filterEvenNumbers(convertStringToList())[i];
       sumOfEvenNumbers += number;
    }
    return sumOfEvenNumbers;
  }

  int addUpOddNumbers() {
    int number =0;
    int sumOfOddNumbers = 0;
    for (int i = 0; i < filterOddNumbers(convertStringToList()).length; i++) {
      number = filterEvenNumbers(convertStringToList())[i];
      sumOfOddNumbers += number;
    }
    return sumOfOddNumbers;
  }

  String operationSumOfEvenNumbers() {
    String operation = '';
    for (int i = 0; i < filterEvenNumbers(convertStringToList()).length; i++) {
      operation += '+ ${filterEvenNumbers(convertStringToList())[i]} ';
    }
    return operation.substring(1);
  }

  String operationSumOfOddNumbers() {
    String operation = '';
    for (int i = 0; i < filterOddNumbers(convertStringToList()).length; i++) {
      operation += '+ ${filterOddNumbers(convertStringToList())[i]} ';
    }
    return operation.substring(1);
  }

  void showSumOfEvenNumbers() {
    print('Sum of even numbers:${operationSumOfEvenNumbers()} '
        '= ${addUpEvenNumbers()}');
  }

  void showSumOfOddNumbers() {
    print('Sum of odd numbers:${operationSumOfOddNumbers()} '
        '= ${addUpOddNumbers()}');
  }
 }

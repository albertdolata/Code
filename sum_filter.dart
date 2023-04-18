class SumFilter {
  String _numbers = '';

  SumFilter(this._numbers);

  String filterNumbers() {
    String evenNumbers = '';
    String oddNumbers = '';
    for (int i = 0; i < _numbers.length; i++) {
      if (int.parse(_numbers[i]) % 2 == 0) {
        evenNumbers += '${_numbers[i]},';
      } else {
        oddNumbers += '${_numbers[i]},';
      }
    }
    return 'Even numbers : $evenNumbers \nOdd numbers:$oddNumbers';
  }

  String filterEvenNumbers() {
    String evenNumbers = '';
    for (int i = 0; i < _numbers.length; i++) {
      if (int.parse(_numbers[i]) % 2 == 0) {
        evenNumbers += '${_numbers[i]},';
      }
    }
    return evenNumbers;
  }

  String filterOddNumbers() {
    String oddNumbers = '';
    for (int i = 0; i < _numbers.length; i++) {
      if (int.parse(_numbers[i]) % 2 == 1) {
        oddNumbers += '${_numbers[i]},';
      }
    }
    return oddNumbers;
  }

  void showEvenNumbers() {
    print('Even numbers : ${filterEvenNumbers()}');
  }

  void showOddNumbers() {
    print('Even numbers : ${filterOddNumbers()}');
  }

  String addUpNumbers() {
    int sumOfEvenNumbers = 0;
    int sumOfOddNumbers = 0;
    String operationSumOfEvenNumbers = '';
    String operationSumOfOddNumbers = '';
    for (int i = 0; i < _numbers.length; i++) {
      if (int.parse(_numbers[i]) % 2 == 0) {
        sumOfEvenNumbers += int.parse(_numbers[i]);
        operationSumOfEvenNumbers += '+ ${_numbers[i]} ';
      } else {
        sumOfOddNumbers += int.parse(_numbers[i]);
        operationSumOfOddNumbers += '+ ${_numbers[i]} ';
      }
    }
    return 'Sum of even numbers:${operationSumOfEvenNumbers.substring(1)} '
        '= $sumOfEvenNumbers '
        '\nSum of odd numbers:${operationSumOfOddNumbers.substring(1)} '
        '= $sumOfOddNumbers';
  }

  int addUpEvenNumbers() {
    int sumOfEvenNumbers = 0;
    for (int i = 0; i < _numbers.length; i++) {
      sumOfEvenNumbers += int.parse(filterOddNumbers()[i]);
    }
    return sumOfEvenNumbers;
  }

  int addUpOddNumbers(){
    int sumOfOddNumbers = 0;
    for (int i = 0; i < filterOddNumbers().length; i++) {
      sumOfOddNumbers += int.parse(filterOddNumbers()[i]);
    }
    return sumOfOddNumbers;
  }

  String operationSumOfEvenNumbers(){
    String operation = '';
    for(int i = 0; i < filterEvenNumbers().length; i++ ){
      operation += '+ ${filterNumbers()[i]} ';
    }
    return operation.substring(1);
  }
String operationSumOfOddNumbers(){
    String operation = '';
    for(int i = 0; i < filterOddNumbers().length; i++){
      operation += '+ ${filterOddNumbers()[i]} ';
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

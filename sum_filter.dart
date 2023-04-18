class SumFilter {
  String _numbers = '';

  SumFilter(this._numbers);

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

  int addUpEvenNumbers() {
    int sumOfEvenNumbers = 0;
    for (int i = 0; i < filterEvenNumbers().length; i++) {
      sumOfEvenNumbers += int.parse(filterEvenNumbers()[i]);
    }
    return sumOfEvenNumbers;
  }

  int addUpOddNumbers() {
    int sumOfOddNumbers = 0;
    for (int i = 0; i < filterOddNumbers().length; i++) {
      sumOfOddNumbers += int.parse(filterOddNumbers()[i]);
    }
    return sumOfOddNumbers;
  }

  String operationSumOfEvenNumbers() {
    String operation = '';
    for (int i = 0; i < filterEvenNumbers().length; i++) {
      operation += '+ ${filterEvenNumbers()[i]} ';
    }
    return operation.substring(1);
  }

  String operationSumOfOddNumbers() {
    String operation = '';
    for (int i = 0; i < filterOddNumbers().length; i++) {
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

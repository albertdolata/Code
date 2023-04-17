class SumFilter {
  String numbers = '';

  SumFilter(this.numbers);

  String filterNumbers(){
    String evenNumbers = '';
    String oddNumbers = '';
    for(int i = 0; i < numbers.length; i++){
      if(int.parse(numbers[i]) % 2 == 0){
        evenNumbers += '${numbers[i]},';
      }else{
        oddNumbers += '${numbers[i]},';
      }
    }
    return 'Even numbers:$evenNumbers \nOdd numbers:$oddNumbers';
  }

  String addUpNumbers(){
    int sumOfEvenNumbers = 0;
    int sumOfOddNumbers = 0;
    String operationSumOfEvenNumbers = '';
    String operationSumOfOddNumbers = '';
    for(int i =0; i < numbers.length; i++){
      if(int.parse(numbers[i]) % 2 == 0){
        sumOfEvenNumbers += int.parse(numbers[i]);
        operationSumOfEvenNumbers += '+ ${numbers[i]} ';
      }else{
        sumOfOddNumbers += int.parse(numbers[i]);
        operationSumOfOddNumbers += '+ ${numbers[i]} ';
      }
    }
    return 'Sum of even numbers: ${operationSumOfEvenNumbers.substring(1)} '
        '= $sumOfEvenNumbers '
        '\nSum of odd numbers: ${operationSumOfOddNumbers.substring(1)} '
        '= $sumOfOddNumbers';
  }
}
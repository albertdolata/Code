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
    for(int i =0; i < numbers.length; i++){
      if(int.parse(numbers[i]) % 2 == 0){
        sumOfEvenNumbers += int.parse(numbers[i]);
      }else{
        sumOfOddNumbers += int.parse(numbers[i]);
      }
    }
    return 'Sum of even numbers: $sumOfEvenNumbers '
        '\nSum of odd numbers: $sumOfOddNumbers';
  }
}
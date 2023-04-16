class Filter {
  String numbers = '';

  Filter(this.numbers);

  String filterNumbers(){
    String evenNumbers = '';
    String oddNumbers = '';
    for(int i = 0; i < numbers.length; i++){
      if(int.parse(numbers[i]) % 2 ==0){
        evenNumbers += '${numbers[i]},';
      }else{
        oddNumbers += '${numbers[i]},';
      }
    }
    return 'Even numbers:$evenNumbers \nOdd numbers:$oddNumbers';
  }
}
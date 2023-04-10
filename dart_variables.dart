void main() {
  int age; //define integer variable
  age = 22; //initialising integer variable
  print(age); //print age value in console
  double balance; //define double variable
  balance = 300.78; //initialising double variable
  /*
    define and initialising String variable,
    use '$' to interpolate double variable to string
  */
  String balance_string = "Account balance: $balance PLN";
  print(balance_string); //print account balance in console;

  //define and initialising boolean variable
  bool booleanVariable = true;

  print('Boolean variable is equal $booleanVariable');

  //define dynamic variable
  dynamic dynamicVariable;


  //initialising and print dynamicVariable as integer
  dynamicVariable = 10;
  print('I am integer that equals $dynamicVariable');

  //change dynamicVariable to String type and print
  dynamicVariable = 'I am String now';
  print(dynamicVariable);
}

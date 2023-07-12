class Singleton {
  static Singleton? _uniqueInstance = Singleton();  //static variable stores our instance of class Singleton
  //can add here useful properties

  _Singleton() {}  //constructor is private, so only our object of class Singleton can create and use an instance of this class

  static Singleton? _getInstance() {    //this method is allowing us to create and return object of class Singleton as a output of a method
    return _uniqueInstance;
  }
  //can add here useful methods
}

class ChocolateCauldron {
  late bool _empty;
  late bool _boiled;
  static ChocolateCauldron? _chocolateCauldron;

  _ChocolateCauldron() {
    _empty = true;
    _boiled = false;
  }

  static ChocolateCauldron? _getChocolateCauldron() {
    if (_chocolateCauldron == null) {
      _chocolateCauldron = ChocolateCauldron();
    }
    return _chocolateCauldron;
  }

  void fillUp() {
    if (isEmpty()) {
      _empty = false;
      _boiled = false;
      //fill up cauldron with mix of milk and chocolate
    }
  }

  void clear() {
    if(!isEmpty() && isBoiled()) {
      // clear the cauldron of the boiled milk and chocolate mix
      _empty = true;
    }
  }

  bool isEmpty() => _empty;

  bool isBoiled() => _boiled;
}
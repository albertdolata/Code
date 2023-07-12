class Singleton {
  static Singleton? _uniqueInstance;  //static variable stores our instance of class Singleton
  //can add here useful properties

  _Singleton() {}  //constructor is private, so only our object of class Singleton can create and use an instance of this class

  static Singleton? _getInstance() {    //this method is allowing us to create and return object of class Singleton as a output of a method
    if (_uniqueInstance == null) {
      _uniqueInstance == Singleton();
    }
    return _uniqueInstance;
  }
  //can add here useful methods
}

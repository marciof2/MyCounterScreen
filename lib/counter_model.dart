class CounterModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void addCounter() {
    _counter++;
  }

  void subCounter() {
    _counter--;
  }

  void resetCounter() {
    _counter = 0;
  }

  void modifierCounter(int valor, Function(int, int) operation) {
    _counter = operation(valor, _counter);
  }
}

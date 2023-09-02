import 'package:counter/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(1, add);
  }

  void subCounter() {
    model.modifierCounter(1, minus);
  }

  void resetCounte() {
    model.resetCounter();
  }

  add(int numb1, int numb2) {
    return numb1 + numb2;
  }

  minus(int num1, int num2) {
    return num1 - num2;
  }
}

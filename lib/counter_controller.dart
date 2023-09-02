import 'package:counter/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(1, _add);
  }

  void subCounter() {
    model.modifierCounter(1, _sub);
  }

  void resetCounte() {
    model.modifierCounter(0, _reset);
  }

  int _add(int numb1, int numb2) {
    return numb1 + numb2;
  }

  int _sub(int num1, int num2) {
    return num1 - num2;
  }

  int _reset(int n1, int n2) {
    return 0;
  }
}

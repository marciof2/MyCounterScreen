import 'package:counter/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.addCounter();
  }

  void subCounter() {
    model.subCounter();
  }

  void resetCounte() {
    model.resetCounter();
  }
}

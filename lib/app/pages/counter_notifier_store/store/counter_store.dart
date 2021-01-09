import 'package:flutter_triple/flutter_triple.dart';

class CounterStore extends NotifierStore<Exception, int> {
  CounterStore() : super(0);

  addCounter() {
    update(state + 1);
  }

  subCounter() {
    update(state - 1);
  }
}

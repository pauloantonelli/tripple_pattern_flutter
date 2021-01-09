import 'package:flutter_triple/flutter_triple.dart';
import 'package:tripple/app/pages/counter_notifier_store/store/counter_store.dart';

class ListCounterStore extends NotifierStore<Exception, List<CounterStore>> {
  ListCounterStore() : super([]);

  addListCounterStore() {
    CounterStore counter = new CounterStore();
    final result = state..add(counter);
    update(List.from(result));
  }

  excludeListCounterStore() {
    final result = state..removeLast();
    update(List.from(result));
  }
}

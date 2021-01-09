import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:tripple/app/pages/counter_notifier_store/store/counter_store.dart';
import 'package:tripple/app/pages/counter_notifier_store/store/list_store.dart';
import 'package:tripple/app/pages/counter_notifier_store/widgets/counter/counter_widget.dart';

class ListCounterWidget extends StatelessWidget {
  final ListCounterStore listCounterStore = new ListCounterStore();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ScopedBuilder<ListCounterStore, Exception, List<CounterStore>>(
        store: listCounterStore,
        onState: (_, state) {
          return Wrap(
            children: [
              ...state
                  .map((counter) => CounterWidget(
                        counterStore: counter,
                      ))
                  .toList(),
              FlatButton(
                onPressed: () {
                  this.listCounterStore.addListCounterStore();
                },
                child: Text('Add Counter'),
              ),
              FlatButton(
                onPressed: () {
                  this.listCounterStore.excludeListCounterStore();
                },
                child: Text('Remove Counter'),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:tripple/app/pages/counter_notifier_store/store/counter_store.dart';

class CounterWidget extends StatelessWidget {
  final CounterStore counterStore;

  const CounterWidget({Key? key, required this.counterStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ScopedBuilder<CounterStore, Exception, int>(
              store: counterStore,
              onState: (_, state) {
                return Container(
                  child: Text('$state'),
                );
              },
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {
                this.counterStore.addCounter();
              },
              child: Text('+1'),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {
                this.counterStore.subCounter();
              },
              child: Text('-1'),
            ),
          ),
        ],
      ),
    );
  }
}

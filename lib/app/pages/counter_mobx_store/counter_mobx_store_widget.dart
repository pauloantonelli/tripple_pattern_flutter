import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_triple/flutter_triple.dart';

import 'counter_mobx_store.dart';

class CounterMobx extends StatefulWidget {
  @override
  _CounterMobxState createState() => _CounterMobxState();
}

class _CounterMobxState extends ModularState<CounterMobx, CounterMobxStore> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    store.observer(
      onState: (e) => print('onState: $e'),
      onError: (e) => print('onError: $e'),
      onLoading: (e) => print('onLoading: $e'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: ScopedBuilder(
              store: store,
              onError: (context, erro) => Text('deu erro'),
              onLoading: (context) => CircularProgressIndicator(),
              onState: (_, state) {
                return Column(
                  children: [
                    Text(store.state.toString()),
                  ],
                );
              },
            ),
          ),
          FlatButton(
            onPressed: () {
              store.incremet();
            },
            child: Text('Adicionar'),
          )
        ],
      ),
    );
  }
}

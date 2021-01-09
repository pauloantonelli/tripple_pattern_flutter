import 'package:flutter/material.dart';

class CounterValueNotify extends StatelessWidget {
  final ValueNotifier<int> counter = new ValueNotifier<int>(0);
  final ValueNotifier<bool> loading = new ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ValueListenableBuilder(
            valueListenable: loading,
            builder: (context, value, child) {
              if (value == true) {
                return CircularProgressIndicator();
              }
              return Text('voce clicou ${counter.value} vezes');
            },
          ),
          FlatButton(
            onPressed: () {
              loading.value = true;
              Future.delayed(Duration(seconds: 1)).then((value) {
                counter.value++;
                loading.value = false;
              });
            },
            child: Text('Adicionar'),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

class CounterRxNofifyer extends StatefulWidget {
  @override
  _CounterRxNofifyerState createState() => _CounterRxNofifyerState();
}

class _CounterRxNofifyerState extends State<CounterRxNofifyer> {
  final RxNotifier<int> counter = new RxNotifier<int>(0);
  final RxNotifier<bool> loading = new RxNotifier<bool>(false);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rxObserver(() {
      print(counter.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          RxBuilder(
              filter: () => counter.value != 3,
              builder: (_) {
                if (loading.value == true) {
                  return CircularProgressIndicator();
                }
                return Text('voce clicou ${counter.value} vezes');
              }),
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

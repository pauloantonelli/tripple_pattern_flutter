import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_controller.dart';
import 'package:flutter_triple/flutter_triple.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key? key, this.title = "Main"}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends ModularState<MainPage, MainController> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ScopedBuilder(
          store: store,
          onLoading: (context) => Center(
                child: CircularProgressIndicator(),
              ),
          onError: (context, erro) => Text('erro'),
          onState: (_, state) {
            return Column(
              children: <Widget>[
                Text(store.state.toString()),
                FlatButton(
                  onPressed: () {
                    store.increment();
                  },
                  child: Text('Increment'),
                )
              ],
            );
          }),
    );
  }
}

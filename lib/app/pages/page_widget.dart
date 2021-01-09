import 'package:flutter/material.dart';
import 'package:tripple/app/pages/counter_notifier_store/home_widget.dart';
import 'package:tripple/app/pages/counter_rx_notifyer/counter_rx_notifyer.dart';

import 'counter_value_notify/counter_value_notify.dart';

class PageWidget extends StatefulWidget {
  @override
  _PageWidgetState createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padrao Tripple'),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('Value Notify: '),
              CounterValueNotify(),
            ],
          ),
          Row(
            children: [
              Text('Counter RX Notifyer: '),
              CounterRxNofifyer(),
            ],
          ),
          Row(
            children: [
              Text('Counter Notifier Store: '),
              HomeWidget(),
            ],
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'widgets/list_counter/list_counter_widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListCounterWidget(),
        ],
      ),
    );
  }
}

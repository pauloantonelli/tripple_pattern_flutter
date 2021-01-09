import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tripple/app/presenter/home/home_controller.dart';

import 'app_widget.dart';
import 'presenter/home/home_page.dart';
import 'presenter/main/main_controller.dart';
import 'presenter/main/main_page.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    Bind(
      (i) => MainController(),
    ),
    Bind(
      (i) => HomeController(),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => MainPage()),
    ChildRoute('/home', child: (_, __) => HomePage()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}

import 'package:flutter_modular/flutter_modular.dart';

import 'counter_mobx_store/counter_mobx_store.dart';

class PagesModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => CounterMobxStore())];

  @override
  List<Bind> get routers => [];

  static Inject get to => Inject<PagesModule>.of();
}

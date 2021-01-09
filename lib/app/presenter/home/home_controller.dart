import 'package:mobx/mobx.dart';
import 'package:mobx_triple/mobx_triple.dart';

class HomeController extends MobXStore<Exception, int> {
  @observable
  int value = 0;

  HomeController() : super(0);

  @action
  void increment() {
    value++;
  }
}

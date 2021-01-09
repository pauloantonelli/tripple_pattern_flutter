import 'package:mobx/mobx.dart';
import 'package:mobx_triple/mobx_triple.dart';

class MainController extends MobXStore<Exception, int> {
  MainController() : super(0);

  void increment() {
    execute(generateFuture);
  }

  Future<int> generateFuture() async {
    await Future.delayed(Duration(milliseconds: 500));
    if (state < 3) {
      return state;
    } else {
      throw 'Erro state maior que 3';
    }
  }
}

import 'package:mobx_triple/mobx_triple.dart';

class CounterMobxStore extends MobXStore<Exception, int> {
  CounterMobxStore() : super(0);

  incremet() {
    update(state + 1);
  }

  void incrementExecute() {
    execute(() => generateFuture());
  }

  Future<int> generateFuture() async {
    await Future.delayed(Duration(milliseconds: 500));
    if (state < 3) {
      return state;
    } else {
      throw 'Deu erro: state maior que 3';
    }
  }
}

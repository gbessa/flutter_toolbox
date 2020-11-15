//flutter packages run build_runner build'
// ou
//flutter packages run build_runner watch'

import 'package:mobx/mobx.dart';
part 'counter_mobx_simple.g.dart';

class CounterSimple = _CounterSimple with _$CounterSimple;

abstract class _CounterSimple with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}

import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class IncrementController implements BlocBase {
  // Fluxo
  var _counterController = BehaviorSubject<int>.seeded(0);
  Stream<int> get outCounter => _counterController.stream;
  Sink<int> get inCounter => _counterController.sink;

  void increment() {
    inCounter.add(_counterController.value + 1);
  }

  @override
  void dispose() {
    _counterController.close();
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => null;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(listener) {
    // TODO: implement removeListener
  }

  @override
  void addListener(listener) {
    // TODO: implement addListener
  }
}

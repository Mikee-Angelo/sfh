import 'package:flutter_modular/flutter_modular.dart';
import 'package:sfh/counter/counter.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const CounterPage());
  }
}

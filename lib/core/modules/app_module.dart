import 'package:flutter_modular/flutter_modular.dart';
import 'package:sfh/core/services/services.dart';
import 'package:sfh/features/onboarding/onboarding.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<CloudService>(CloudServiceImpl.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const OnboardingPage());
  }
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:sfh/core/services/services.dart';
import 'package:sfh/features/auth/auth.dart';
import 'package:sfh/features/auth/presentation/pages/otp_page.dart';
import 'package:sfh/features/onboarding/onboarding.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<CloudService>(CloudServiceImpl.new)
      ..addSingleton<AuthRepository>(AuthRepositoryImpl.new)
      ..addSingleton<SignupUsecase>(SignupUsecase.new)
      ..addSingleton<VerifyOtpUsecase>(VerifyOtpUsecase.new)
      ..addSingleton<AuthBloc>(AuthBloc.new);
  }

  @override
  void routes(RouteManager r) {
    r
      ..child('/', child: (_) => const OnboardingPage())
      ..child(SignupPage.routeName, child: (_) => SignupPage())
      ..child(
        OtpPage.routeName,
        child: (context) {
          final args = r.args.data as OtpPageArgs;
          return OtpPage(args: args);
        },
      );
  }
}

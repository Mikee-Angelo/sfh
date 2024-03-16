import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sfh/core/modules/app_module.dart';
import 'package:sfh/counter/counter.dart';
import 'package:sfh/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}

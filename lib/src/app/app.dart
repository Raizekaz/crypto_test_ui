import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ui_1/l10n/l10n.dart';
import 'package:test_ui_1/src/app/app_navigation.dart';
import 'package:test_ui_1/themes/app_colors.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppThemes.lightTheme,
      dark: AppThemes.darkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => _MateApp(),
    );
  }
}

class _MateApp extends StatelessWidget {
  const _MateApp();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp.router(
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.lightTheme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: AppRouter().router,
        );
      },
    );
  }
}

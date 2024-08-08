import 'package:core/core.dart';
import 'package:core/di/app_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:navigation/navigation.dart';

class TackApp extends StatelessWidget {
  const TackApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = appLocator.get<AppRouter>();

    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(
            useCountryCode: false,
            basePath: 'localization',
            fallbackFile: 'en',
            decodeStrategies: <BaseDecodeStrategy>[
              JsonDecodeStrategy(),
            ],
          ),
        ),
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/presentation/feathures/application_detail/application_detail.dart';
import 'package:portfolio/presentation/feathures/home/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en', 'US'),
        supportedLocales: const [Locale('en', 'US')],
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/applicationDetail': (context) => const ApplicationDetail()
        });
  }
}

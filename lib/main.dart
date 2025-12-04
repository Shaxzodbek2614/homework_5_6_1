import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:omework_5_6_1/core/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:omework_5_6_1/l10n/inherited_locale.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';

void main() {
  runApp(
      InheritedLocale(locale: ValueNotifier<Locale>(InheritedLocale.uzbLocale),
          child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: context.local, builder: (context,locale,child){
          return MaterialApp(
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales:AppLocalizations.supportedLocales,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            home: SigninPage(),
          );
    });
  }
}


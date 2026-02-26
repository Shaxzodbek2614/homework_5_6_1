import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:omework_5_6_1/core/app_route.dart';
import 'package:omework_5_6_1/core/app_theme.dart';
import 'package:omework_5_6_1/l10n/inherited_locale.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';
import 'package:omework_5_6_1/providers/product_provider.dart';
import 'package:provider/provider.dart';

import 'l10n/locales/app_localization.dart';

void main() {
  runApp(
      InheritedLocale(locale: ValueNotifier<Locale>(InheritedLocale.uzbLocale),
          child: ChangeNotifierProvider(create: (BuildContext context)=>ProductProvider(context),
          child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: context.local, builder: (context,locale,child){
          return MaterialApp.router(
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales:AppLocalizations.supportedLocales,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRoute.router,
          );
    });
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:omework_5_6_1/l10n/inherited_locale.dart';
extension AppLocalizationExt on BuildContext{
  AppLocalizations get l10n => AppLocalizations.of(this);
}

extension InheritedLocaleExt on BuildContext{
  ValueNotifier<Locale> get local => InheritedLocale.of(this).locale;
}
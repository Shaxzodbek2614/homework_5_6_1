import 'package:flutter/cupertino.dart';
import 'package:omework_5_6_1/l10n/inherited_locale.dart';

import 'locales/app_localization.dart';
extension AppLocalizationExt on BuildContext{
  AppLocalizations get l10n => AppLocalizations.of(this);
}

extension InheritedLocaleExt on BuildContext{
  ValueNotifier<Locale> get local => InheritedLocale.of(this).locale;
}
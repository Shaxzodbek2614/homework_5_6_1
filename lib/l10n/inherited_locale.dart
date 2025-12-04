import 'package:flutter/cupertino.dart';

class InheritedLocale extends InheritedWidget {
  static const uzbLocale = Locale("uz");
  static const englishLocale = Locale("en");

  final ValueNotifier<Locale> locale;

  const InheritedLocale({super.key, required Widget child,required this.locale})
    : super(child: child);

  static InheritedLocale of(BuildContext context) {
    final InheritedLocale? result =
        context.dependOnInheritedWidgetOfExactType<InheritedLocale>();
    assert(result != null, 'No InheritedLocale found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedLocale oldWidget) {
    return locale != oldWidget.locale ;
  }
}

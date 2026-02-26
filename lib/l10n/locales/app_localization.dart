import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uz'),
  ];

  /// No description provided for @royxatdan_otish.
  ///
  /// In uz, this message translates to:
  /// **'Ro\'yxatdan o\'tish'**
  String get royxatdan_otish;

  /// No description provided for @tizimga_kirish.
  ///
  /// In uz, this message translates to:
  /// **'Tizimga kirish'**
  String get tizimga_kirish;

  /// No description provided for @email.
  ///
  /// In uz, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @login.
  ///
  /// In uz, this message translates to:
  /// **'Parol'**
  String get login;

  /// No description provided for @ikkinchi_tugma.
  ///
  /// In uz, this message translates to:
  /// **'Facebook bilan tizimga kiring'**
  String get ikkinchi_tugma;

  /// No description provided for @dont_have_account.
  ///
  /// In uz, this message translates to:
  /// **'Hisobingiz yo\'qmi?'**
  String get dont_have_account;

  /// No description provided for @ism.
  ///
  /// In uz, this message translates to:
  /// **'Ism'**
  String get ism;

  /// No description provided for @parol_tasdiqlash.
  ///
  /// In uz, this message translates to:
  /// **'Parolni tasdiqlang'**
  String get parol_tasdiqlash;

  /// No description provided for @allaqachon.
  ///
  /// In uz, this message translates to:
  /// **'Hisobingiz allaqachon bormi?'**
  String get allaqachon;

  /// No description provided for @tabriklayman.
  ///
  /// In uz, this message translates to:
  /// **'Tabriklaymiz'**
  String get tabriklayman;

  /// No description provided for @your_account.
  ///
  /// In uz, this message translates to:
  /// **'Sizning hisobingiz'**
  String get your_account;

  /// No description provided for @successfully_created.
  ///
  /// In uz, this message translates to:
  /// **'muvaffaqiyatli yaratildi'**
  String get successfully_created;

  /// No description provided for @mahsulotlar_list.
  ///
  /// In uz, this message translates to:
  /// **'Mahsulotlar ro\'yxati'**
  String get mahsulotlar_list;

  /// No description provided for @yangi.
  ///
  /// In uz, this message translates to:
  /// **'Yangi'**
  String get yangi;

  /// No description provided for @mebel.
  ///
  /// In uz, this message translates to:
  /// **'Mebel'**
  String get mebel;

  /// No description provided for @elektronika.
  ///
  /// In uz, this message translates to:
  /// **'Elektronika'**
  String get elektronika;

  /// No description provided for @fashions.
  ///
  /// In uz, this message translates to:
  /// **'Modalar'**
  String get fashions;

  /// No description provided for @orange_chair.
  ///
  /// In uz, this message translates to:
  /// **'To\'q sariq stul'**
  String get orange_chair;

  /// No description provided for @idish.
  ///
  /// In uz, this message translates to:
  /// **'Idish'**
  String get idish;

  /// No description provided for @sumka.
  ///
  /// In uz, this message translates to:
  /// **'Sumka'**
  String get sumka;

  /// No description provided for @views.
  ///
  /// In uz, this message translates to:
  /// **'ko\'rishlar'**
  String get views;

  /// No description provided for @add_to.
  ///
  /// In uz, this message translates to:
  /// **'Savatchaga Qo\'shish'**
  String get add_to;

  /// No description provided for @uy.
  ///
  /// In uz, this message translates to:
  /// **'Uy'**
  String get uy;

  /// No description provided for @qidirish.
  ///
  /// In uz, this message translates to:
  /// **'Qidirish'**
  String get qidirish;

  /// No description provided for @likes.
  ///
  /// In uz, this message translates to:
  /// **'Yoqtirilganlar'**
  String get likes;

  /// No description provided for @sharhlar.
  ///
  /// In uz, this message translates to:
  /// **'Sharhlar'**
  String get sharhlar;

  /// No description provided for @sana.
  ///
  /// In uz, this message translates to:
  /// **'Sharh yanvarda 06.2020'**
  String get sana;

  /// No description provided for @your_cart.
  ///
  /// In uz, this message translates to:
  /// **'Savatingiz'**
  String get your_cart;

  /// No description provided for @chek.
  ///
  /// In uz, this message translates to:
  /// **'Ro\'yxatdan o\'chirilish'**
  String get chek;

  /// No description provided for @empty_cart.
  ///
  /// In uz, this message translates to:
  /// **'Bo\'sh savat'**
  String get empty_cart;

  /// No description provided for @dialogdagi_text.
  ///
  /// In uz, this message translates to:
  /// **'Savatingizdagi barcha narsalarni o\'chirishni xohlaysizmi?'**
  String get dialogdagi_text;

  /// No description provided for @bekor_qilish.
  ///
  /// In uz, this message translates to:
  /// **'Bekor qilish'**
  String get bekor_qilish;

  /// No description provided for @your_cart_is_empty.
  ///
  /// In uz, this message translates to:
  /// **'Savatingiz bo\'sh'**
  String get your_cart_is_empty;

  /// No description provided for @looking.
  ///
  /// In uz, this message translates to:
  /// **'Tafsilotlarni qidiryapsizmi?'**
  String get looking;

  /// No description provided for @yangi_narsa.
  ///
  /// In uz, this message translates to:
  /// **'Yangi mahsulotlarni o\'rganing'**
  String get yangi_narsa;

  /// No description provided for @ochirish.
  ///
  /// In uz, this message translates to:
  /// **'O\'chirish'**
  String get ochirish;

  /// No description provided for @qism1.
  ///
  /// In uz, this message translates to:
  /// **'Haqiqatan ham o\'chirmoqchimisiz?'**
  String get qism1;

  /// No description provided for @qism2.
  ///
  /// In uz, this message translates to:
  /// **'savatingizdan'**
  String get qism2;

  /// No description provided for @yetkazish_adress.
  ///
  /// In uz, this message translates to:
  /// **'Yetkazib berish manzili'**
  String get yetkazish_adress;

  /// No description provided for @town_city.
  ///
  /// In uz, this message translates to:
  /// **'Shahar/Qishloq'**
  String get town_city;

  /// No description provided for @pochta_index.
  ///
  /// In uz, this message translates to:
  /// **'Pochta indeksi'**
  String get pochta_index;

  /// No description provided for @kocha.
  ///
  /// In uz, this message translates to:
  /// **'Ko\'cha'**
  String get kocha;

  /// No description provided for @matn.
  ///
  /// In uz, this message translates to:
  /// **'Bu sizning standart yetkazib berish manzilingiz bo\'ladi'**
  String get matn;

  /// No description provided for @next.
  ///
  /// In uz, this message translates to:
  /// **'Keyingisi'**
  String get next;

  /// No description provided for @payment.
  ///
  /// In uz, this message translates to:
  /// **'To\'lov usuli'**
  String get payment;

  /// No description provided for @karta_raqam.
  ///
  /// In uz, this message translates to:
  /// **'Karta raqami'**
  String get karta_raqam;

  /// No description provided for @vaqt.
  ///
  /// In uz, this message translates to:
  /// **'Quyidagi sanagacha foydalanilsin'**
  String get vaqt;

  /// No description provided for @payment_matn.
  ///
  /// In uz, this message translates to:
  /// **'Standart to\'lov usulingiz sifatida o\'rnating'**
  String get payment_matn;

  /// No description provided for @chek_out.
  ///
  /// In uz, this message translates to:
  /// **'Ro\'yxatdan o\'chirilish'**
  String get chek_out;

  /// No description provided for @change.
  ///
  /// In uz, this message translates to:
  /// **'O\'zgarish'**
  String get change;

  /// No description provided for @pay.
  ///
  /// In uz, this message translates to:
  /// **'To\'lov'**
  String get pay;

  /// No description provided for @review.
  ///
  /// In uz, this message translates to:
  /// **'Mahsulotlarni ko\'rib chiqing'**
  String get review;

  /// No description provided for @buyurtma.
  ///
  /// In uz, this message translates to:
  /// **'Buyurtma berish'**
  String get buyurtma;

  /// No description provided for @davom_etish.
  ///
  /// In uz, this message translates to:
  /// **'Xarid qilishni davom eting'**
  String get davom_etish;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'uz':
      return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en')
  ];

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @bengali.
  ///
  /// In en, this message translates to:
  /// **'Bengali'**
  String get bengali;

  /// No description provided for @firstTest.
  ///
  /// In en, this message translates to:
  /// **'First test'**
  String get firstTest;

  /// No description provided for @secondTest.
  ///
  /// In en, this message translates to:
  /// **'Second test'**
  String get secondTest;

  /// No description provided for @thirdTest.
  ///
  /// In en, this message translates to:
  /// **'Third test'**
  String get thirdTest;

  /// No description provided for @fourthTest.
  ///
  /// In en, this message translates to:
  /// **'Fourth test'**
  String get fourthTest;

  /// No description provided for @buttonIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Each button should be clickable\nSome may have requirement of level\nSome you have to figure it couldn\'t be clicked'**
  String get buttonIntroduction;

  /// No description provided for @floatingButtonDescription.
  ///
  /// In en, this message translates to:
  /// **'By clicking on the + button,\nyour level will either increase / decrease randomly.\n\nYou are now on level: {level}'**
  String floatingButtonDescription(Object level);

  /// No description provided for @availableOnDescription.
  ///
  /// In en, this message translates to:
  /// **'Available on level {level}'**
  String availableOnDescription(Object level);

  /// No description provided for @yourLevel.
  ///
  /// In en, this message translates to:
  /// **'Your level: {level}'**
  String yourLevel(Object level);

  /// No description provided for @getSizeBeforeBuild.
  ///
  /// In en, this message translates to:
  /// **'Get size before build'**
  String get getSizeBeforeBuild;

  /// No description provided for @getSizeAfterBuild.
  ///
  /// In en, this message translates to:
  /// **'Get size after build'**
  String get getSizeAfterBuild;

  /// No description provided for @firstTestIntroduction.
  ///
  /// In en, this message translates to:
  /// **'The slowness issue while scrolling has been optimized for a smoother experience.'**
  String get firstTestIntroduction;

  /// No description provided for @secondTestIntroduction.
  ///
  /// In en, this message translates to:
  /// **'The performance lag when generating large data has been resolved by refactoring the logic with isolates for efficient computation.'**
  String get secondTestIntroduction;

  /// No description provided for @thirdTestIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Buttons above demonstrate how to retrieve the text\'s size before and after build using Flutter layout tools.'**
  String get thirdTestIntroduction;

  /// No description provided for @fourthTestIntroduction.
  ///
  /// In en, this message translates to:
  /// **'We implemented a very simple localization for this project, and the folder structure is a bit messy. If you can, please redefine the folder structure using Clean Architecture principal, and use Flutter\'s proper localization to replace our simple localization.'**
  String get fourthTestIntroduction;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['bn', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn': return AppLocalizationsBn();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

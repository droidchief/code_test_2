import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get english => 'English';

  @override
  String get bengali => 'Bengali';

  @override
  String get firstTest => 'First test';

  @override
  String get secondTest => 'Second test';

  @override
  String get thirdTest => 'Third test';

  @override
  String get fourthTest => 'Fourth test';

  @override
  String get buttonIntroduction => 'Each button should be clickable\nSome may have requirement of level\nSome you have to figure it couldn\'t be clicked';

  @override
  String floatingButtonDescription(Object level) {
    return 'By clicking on the + button,\nyour level will either increase / decrease randomly.\n\nYou are now on level: $level';
  }

  @override
  String availableOnDescription(Object level) {
    return 'Available on level $level';
  }

  @override
  String yourLevel(Object level) {
    return 'Your level: $level';
  }

  @override
  String get getSizeBeforeBuild => 'Get size before build';

  @override
  String get getSizeAfterBuild => 'Get size after build';

  @override
  String get firstTestIntroduction => 'The slowness issue while scrolling has been optimized for a smoother experience.';

  @override
  String get secondTestIntroduction => 'The performance lag when generating large data has been resolved by refactoring the logic with isolates for efficient computation.';

  @override
  String get thirdTestIntroduction => 'Buttons above demonstrate how to retrieve the text\'s size before and after build using Flutter layout tools.';

  @override
  String get fourthTestIntroduction => 'We implemented a very simple localization for this project, and the folder structure is a bit messy. If you can, please redefine the folder structure using Clean Architecture principal, and use Flutter\'s proper localization to replace our simple localization.';
}

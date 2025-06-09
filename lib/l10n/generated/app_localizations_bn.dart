import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get english => 'ইংরেজি';

  @override
  String get bengali => 'বাংলা';

  @override
  String get firstTest => 'প্রথম পরীক্ষা';

  @override
  String get secondTest => 'দ্বিতীয় পরীক্ষা';

  @override
  String get thirdTest => 'তৃতীয় পরীক্ষা';

  @override
  String get fourthTest => 'চতুর্থ পরীক্ষা';

  @override
  String get buttonIntroduction => 'প্রতিটি বোতাম ক্লিকযোগ্য হওয়া উচিত।\nকিছু বোতামের জন্য নির্দিষ্ট স্তরের প্রয়োজন হতে পারে।\nকিছু বোতামের ক্ষেত্রে আপনাকে বুঝে নিতে হবে যে সেগুলি ক্লিক করা যাবে না।';

  @override
  String floatingButtonDescription(Object level) {
    return '+ বোতামটি ক্লিক করলে,\nতোমার লেভেল এলোমেলোভাবে বাড়তে বা কমতে পারে।\n\nতুমি এখন যে লেভেলে আছো: $level';
  }

  @override
  String availableOnDescription(Object level) {
    return 'লেভেল $level এ আনলক হবে';
  }

  @override
  String yourLevel(Object level) {
    return 'তোমার লেভেল: $level';
  }

  @override
  String get getSizeBeforeBuild => 'build এর আগে size নিন';

  @override
  String get getSizeAfterBuild => 'build এর পরে size নিন';

  @override
  String get firstTestIntroduction => 'স্ক্রল করার সময় ধীরগতির সমস্যাটি অপ্টিমাইজ করে এখন আরও মসৃণ অভিজ্ঞতা তৈরি করা হয়েছে।';

  @override
  String get secondTestIntroduction => '১ মিলিয়ন ডাটা তৈরি করার সময় যে পারফরমেন্স ল্যাগ হচ্ছিল, তা এখন \'isolate\' ব্যবহার করে দক্ষভাবে সমাধান করা হয়েছে।';

  @override
  String get thirdTestIntroduction => 'উপরে থাকা বোতাম দুটি এখন দেখায় কিভাবে টেক্সটের আকার \'Build\' এর আগে এবং পরে পাওয়া যায় Flutter Layout টুল ব্যবহার করে।';

  @override
  String get fourthTestIntroduction => 'এই প্রজেক্টের জন্য একটি সাধারণ লোকালাইজেশন পদ্ধতি প্রয়োগ করা হয়েছে এবং ফোল্ডার স্ট্রাকচারটি কিছুটা বিশৃঙ্খল। Clean Architecture নীতি অনুসরণ করে ফোল্ডার স্ট্রাকচারটি পুনরায় সাজান এবং Flutter-এর Localization ব্যবস্থাটি প্রয়োগ করুন।';
}

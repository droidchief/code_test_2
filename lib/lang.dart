enum SupportedLanguage {
  english({
    "english": "English",
    "bengali": "Bengali",
    "buttonIntroduction":
        "Each button should be clickable\nSome may have requirement of level\nSome you have to figure it couldn't be clicked",
    "firstTest": "First test",
    "secondTest": "Second test",
    "thirdTest": "Third test",
    "fourthTest": "Fourth test",
    "floatingButtonDescription":
        'By clicking on the + button,\nyour level will either increase / decrease randomly.\n\nYou are now on level: \${level}',
    "availableOnDescription": "Available on level \${level}",
    "yourLevel": "Your level: \${level}",
    "getSizeBeforeBuild": "Get size before build",
    "getSizeAfterBuild": "Get size after build",
    "firstTestIntroduction":
        "The slowness issue while scrolling has been optimized for a smoother experience.",
    "secondTestIntroduction":
        "The performance lag when generating large data has been resolved by refactoring the logic with isolates for efficient computation.",
    "thirdTestIntroduction":
        "Buttons above demonstrate how to retrieve the text's size before and after build using Flutter layout tools.",
    "fourthTestIntroduction":
        "We implemented a very simple localization for this project, and the folder structure is a bit messy. If you can, please redefine the folder structure using Clean Architecture principal, and use Flutter's proper localization to replace our simple localization.",
  }),
  bengali({
    "english": "English",
    "bengali": "Bengali",
    "buttonIntroduction":
        "প্রতিটি বোতাম ক্লিকযোগ্য হওয়া উচিত।\nকিছু বোতামের জন্য নির্দিষ্ট স্তরের প্রয়োজন হতে পারে।\nকিছু বোতামের ক্ষেত্রে আপনাকে বুঝে নিতে হবে যে সেগুলি ক্লিক করা যাবে না।",
    "firstTest": "প্রথম পরীক্ষা",
    "secondTest": "দ্বিতীয় পরীক্ষা",
    "thirdTest": "তৃতীয় পরীক্ষা",
    "fourthTest": "চতুর্থ পরীক্ষা",
    "floatingButtonDescription":
        '+ বোতামটি ক্লিক করলে,\nতোমার লেভেল এলোমেলোভাবে বাড়তে বা কমতে পারে।\n\nতুমি এখন যে লেভেলে আছো: \${level}',
    "availableOnDescription": "লেভেল \${level} এ আনলক হবে",
    "yourLevel": "তোমার লেভেল: \${level}",
    "getSizeBeforeBuild": "build এর আগে size নিন",
    "getSizeAfterBuild": "build এর পরে size নিন",
    "firstTestIntroduction": "স্ক্রল করার সময় ধীরগতির সমস্যাটি অপ্টিমাইজ করে এখন আরও মসৃণ অভিজ্ঞতা তৈরি করা হয়েছে।",
    "secondTestIntroduction": "১ মিলিয়ন ডাটা তৈরি করার সময় যে পারফরমেন্স ল্যাগ হচ্ছিল, তা এখন 'isolate' ব্যবহার করে দক্ষভাবে সমাধান করা হয়েছে।",
    "thirdTestIntroduction": "উপরে থাকা বোতাম দুটি এখন দেখায় কিভাবে টেক্সটের আকার 'Build' এর আগে এবং পরে পাওয়া যায় Flutter Layout টুল ব্যবহার করে।"
  });

  const SupportedLanguage(this.dictionary);

  final Map<String, String> dictionary;
}

SupportedLanguage currentLanguage = SupportedLanguage.english;

extension SupportedLanguageExt on SupportedLanguage {
  String translate(String key) {
    return dictionary[key] ?? key;
  }
}

import 'package:flutter/widgets.dart';

class AppStrings {
  const AppStrings(this.languageCode);

  final String languageCode;

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  static const Map<String, Map<String, String>> _values = {
    'en': {
      'appName': 'Fit Buddy',
      'home': 'Home',
      'workouts': 'Workouts',
      'aiAssistant': 'AI Assistant',
      'settings': 'Settings',
      'welcomeTitle': 'Welcome!',
      'welcomeMessage':
          'Your simple fitness companion. Browse a few basic exercises or ask '
              'the AI assistant for a workout idea.',
      'quickActions': 'Quick Actions',
      'viewWorkouts': 'View Workouts',
      'viewWorkoutsSubtitle': 'Simple exercises with sets and reps',
      'askAssistant': 'Ask the AI Assistant',
      'askAssistantSubtitle': 'Get fitness advice from Gemini AI',
      'tipTitle': 'Tip of the day',
      'tipBody':
          'Warm up for 5 minutes before every workout and drink enough water.',
      'workoutsSubtitle': 'Tap an exercise to see the details',
      'exerciseDetails': 'Exercise Details',
      'muscleGroup': 'Muscle group',
      'difficulty': 'Difficulty',
      'description': 'Description',
      'sets': 'Sets',
      'repetitions': 'Repetitions',
      'beginner': 'Beginner',
      'intermediate': 'Intermediate',
      'advanced': 'Advanced',
      'aiEmptyTitle': 'Ask me about fitness',
      'aiEmptyMessage': 'For example: "Give me a simple chest workout."',
      'aiHint': 'Type your question...',
      'send': 'Send',
      'thinking': 'Thinking...',
      'clearChat': 'Clear chat',
      'suggestion1': 'Give me a simple chest workout.',
      'suggestion2': 'What exercises can I do for my legs?',
      'suggestion3': 'Give me a beginner workout plan.',
      'errorEmptyMessage': 'Please type a question first.',
      'errorNoInternet':
          'No internet connection. Please check your network and try again.',
      'errorApiKey':
          'Gemini API key is missing. Run the app with --dart-define=GEMINI_API_KEY=your_key.',
      'errorApi': 'Could not reach Gemini. Please try again later.',
      'errorEmptyResponse':
          'Gemini returned an empty answer. Try asking in another way.',
      'errorInvalidResponse': 'Received an unexpected response from Gemini.',
      'appearance': 'Appearance',
      'darkMode': 'Dark Mode',
      'darkModeSubtitle': 'Use a dark colour scheme',
      'language': 'Language',
      'english': 'English',
      'arabic': 'العربية',
      'about': 'About',
      'aboutText':
          'A simple fitness app built as a Mobile Programming course project.',
    },
    'ar': {
      'appName': 'فِت بادي',
      'home': 'الرئيسية',
      'workouts': 'التمارين',
      'aiAssistant': 'المساعد الذكي',
      'settings': 'الإعدادات',
      'welcomeTitle': 'مرحباً بك!',
      'welcomeMessage':
          'رفيقك البسيط في اللياقة. تصفّح بعض التمارين الأساسية أو اسأل المساعد '
              'الذكي عن فكرة تمرين.',
      'quickActions': 'إجراءات سريعة',
      'viewWorkouts': 'عرض التمارين',
      'viewWorkoutsSubtitle': 'تمارين بسيطة مع المجموعات والتكرارات',
      'askAssistant': 'اسأل المساعد الذكي',
      'askAssistantSubtitle': 'احصل على نصائح لياقة من Gemini AI',
      'tipTitle': 'نصيحة اليوم',
      'tipBody': 'قم بالتسخين لمدة 5 دقائق قبل كل تمرين واشرب كمية كافية من الماء.',
      'workoutsSubtitle': 'اضغط على أي تمرين لعرض التفاصيل',
      'exerciseDetails': 'تفاصيل التمرين',
      'muscleGroup': 'العضلة المستهدفة',
      'difficulty': 'المستوى',
      'description': 'الوصف',
      'sets': 'المجموعات',
      'repetitions': 'التكرارات',
      'beginner': 'مبتدئ',
      'intermediate': 'متوسط',
      'advanced': 'متقدم',
      'aiEmptyTitle': 'اسألني عن اللياقة',
      'aiEmptyMessage': 'مثال: "أعطني تمريناً بسيطاً للصدر."',
      'aiHint': 'اكتب سؤالك هنا...',
      'send': 'إرسال',
      'thinking': 'جارٍ التفكير...',
      'clearChat': 'مسح المحادثة',
      'suggestion1': 'أعطني تمريناً بسيطاً للصدر.',
      'suggestion2': 'ما هي التمارين التي يمكنني عملها لقدمي؟',
      'suggestion3': 'أعطني برنامج تمرين للمبتدئين.',
      'errorEmptyMessage': 'الرجاء كتابة سؤال أولاً.',
      'errorNoInternet': 'لا يوجد اتصال بالإنترنت. تحقق من الشبكة وحاول مرة أخرى.',
      'errorApiKey':
          'مفتاح Gemini API غير موجود. شغّل التطبيق مع --dart-define=GEMINI_API_KEY=your_key.',
      'errorApi': 'تعذّر الاتصال بـ Gemini. حاول مرة أخرى لاحقاً.',
      'errorEmptyResponse': 'أعاد Gemini إجابة فارغة. جرّب صياغة السؤال بطريقة أخرى.',
      'errorInvalidResponse': 'تم استلام رد غير متوقع من Gemini.',
      'appearance': 'المظهر',
      'darkMode': 'الوضع الداكن',
      'darkModeSubtitle': 'استخدام ألوان داكنة',
      'language': 'اللغة',
      'english': 'English',
      'arabic': 'العربية',
      'about': 'حول التطبيق',
      'aboutText': 'تطبيق لياقة بسيط تم بناؤه كمشروع لمادة برمجة الهواتف.',
    },
  };

  static AppStrings of(BuildContext context) =>
      AppStrings(Localizations.localeOf(context).languageCode);

  String text(String key) {
    final map = _values[languageCode] ?? _values['en']!;
    return map[key] ?? _values['en']![key] ?? key;
  }
}

extension AppStringsExtension on BuildContext {
  String tr(String key) => AppStrings.of(this).text(key);
  String get lang => Localizations.localeOf(this).languageCode;
}
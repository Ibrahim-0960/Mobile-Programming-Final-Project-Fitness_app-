import 'package:flutter/material.dart';

import '../models/exercise.dart';

const List<Exercise> exercises = [
  Exercise(
    id: 'push_ups',
    name: LocalizedText(en: 'Push-ups', ar: 'تمرين الضغط'),
    muscleGroup: LocalizedText(en: 'Chest', ar: 'الصدر'),
    difficultyKey: 'beginner',
    description: LocalizedText(
      en: 'A classic body-weight exercise for the chest, shoulders and '
          'triceps. Keep your body in a straight line and lower your chest '
          'close to the floor.',
      ar: 'تمرين كلاسيكي بوزن الجسم يستهدف الصدر والكتفين والعضلة ثلاثية '
          'الرؤوس. حافظ على استقامة جسمك وانزل حتى يقترب صدرك من الأرض.',
    ),
    sets: 3,
    reps: LocalizedText(en: '10 - 15', ar: '10 - 15'),
    icon: Icons.sports_gymnastics,
  ),
  Exercise(
    id: 'squats',
    name: LocalizedText(en: 'Squats', ar: 'تمرين القرفصاء'),
    muscleGroup: LocalizedText(en: 'Legs', ar: 'الأرجل'),
    difficultyKey: 'beginner',
    description: LocalizedText(
      en: 'A basic lower-body exercise for the thighs and glutes. Keep your '
          'back straight and push your hips back while going down.',
      ar: 'تمرين أساسي للجزء السفلي من الجسم يستهدف الفخذين والأرداف. حافظ '
          'على استقامة ظهرك وادفع الحوض للخلف أثناء النزول.',
    ),
    sets: 3,
    reps: LocalizedText(en: '12 - 15', ar: '12 - 15'),
    icon: Icons.directions_walk,
  ),
  Exercise(
    id: 'lunges',
    name: LocalizedText(en: 'Lunges', ar: 'تمرين الطعن'),
    muscleGroup: LocalizedText(en: 'Legs', ar: 'الأرجل'),
    difficultyKey: 'beginner',
    description: LocalizedText(
      en: 'Step forward and lower your back knee towards the floor. Great for '
          'balance and leg strength.',
      ar: 'اخطُ خطوة للأمام وانزل بركبة القدم الخلفية باتجاه الأرض. تمرين '
          'ممتاز للتوازن وتقوية الأرجل.',
    ),
    sets: 3,
    reps: LocalizedText(en: '10 each leg', ar: '10 لكل رجل'),
    icon: Icons.directions_run,
  ),
  Exercise(
    id: 'plank',
    name: LocalizedText(en: 'Plank', ar: 'تمرين البلانك'),
    muscleGroup: LocalizedText(en: 'Core', ar: 'عضلات البطن'),
    difficultyKey: 'beginner',
    description: LocalizedText(
      en: 'Hold your body in a straight line on your forearms and toes. '
          'It trains the whole core without any equipment.',
      ar: 'حافظ على استقامة جسمك مستنداً على ساعديك وأطراف قدميك. يمرّن عضلات '
          'البطن بالكامل دون أي أدوات.',
    ),
    sets: 3,
    reps: LocalizedText(en: '30 - 60 sec', ar: '30 - 60 ثانية'),
    icon: Icons.self_improvement,
  ),
  Exercise(
    id: 'pull_ups',
    name: LocalizedText(en: 'Pull-ups', ar: 'تمرين العقلة'),
    muscleGroup: LocalizedText(en: 'Back', ar: 'الظهر'),
    difficultyKey: 'advanced',
    description: LocalizedText(
      en: 'Hang from a bar and pull yourself up until your chin passes the '
          'bar. One of the best exercises for the back.',
      ar: 'تعلّق بالعقلة واسحب جسمك للأعلى حتى يتجاوز ذقنك البار. من أفضل '
          'التمارين لعضلات الظهر.',
    ),
    sets: 3,
    reps: LocalizedText(en: '6 - 10', ar: '6 - 10'),
    icon: Icons.sports_martial_arts,
  ),
  Exercise(
    id: 'dumbbell_bench_press',
    name: LocalizedText(
      en: 'Dumbbell Bench Press',
      ar: 'تمرين الضغط بالدمبل على المقعد',
    ),
    muscleGroup: LocalizedText(en: 'Chest', ar: 'الصدر'),
    difficultyKey: 'intermediate',
    description: LocalizedText(
      en: 'Lie on a flat bench and press two dumbbells upwards. Keep your '
          'elbows at about 45 degrees.',
      ar: 'استلقِ على مقعد مستوٍ واضغط بالدمبلين للأعلى. حافظ على زاوية '
          'المرفقين حوالي 45 درجة.',
    ),
    sets: 4,
    reps: LocalizedText(en: '8 - 12', ar: '8 - 12'),
    icon: Icons.fitness_center,
  ),
];
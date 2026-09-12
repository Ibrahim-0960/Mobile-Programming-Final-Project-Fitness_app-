import 'package:flutter/material.dart';

class LocalizedText {
  const LocalizedText({required this.en, required this.ar});

  final String en;
  final String ar;

  String forLanguage(String languageCode) => languageCode == 'ar' ? ar : en;
}

class Exercise {
  const Exercise({
    required this.id,
    required this.name,
    required this.muscleGroup,
    required this.difficultyKey,
    required this.description,
    required this.sets,
    required this.reps,
    required this.icon,
  });

  final String id;
  final LocalizedText name;
  final LocalizedText muscleGroup;
  final String difficultyKey;
  final LocalizedText description;
  final int sets;
  final LocalizedText reps;
  final IconData icon;
}

extension LocalizedTextExtension on LocalizedText {
  String of(BuildContext context) =>
      forLanguage(Localizations.localeOf(context).languageCode);
}
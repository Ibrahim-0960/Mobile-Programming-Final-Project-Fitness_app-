import 'package:flutter/material.dart';

import '../data/exercise_data.dart';
import '../l10n/app_strings.dart';
import '../models/exercise.dart';
import 'exercise_detail_screen.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(context.tr('workouts'))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            context.tr('workoutsSubtitle'),
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          for (final exercise in exercises) ...[
            _ExerciseCard(exercise: exercise),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}

class _ExerciseCard extends StatelessWidget {
  const _ExerciseCard({required this.exercise});

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Icon(
            exercise.icon,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(
          exercise.name.of(context),
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          '${exercise.muscleGroup.of(context)} - '
          '${context.tr(exercise.difficultyKey)}',
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ExerciseDetailScreen(exercise: exercise),
            ),
          );
        },
      ),
    );
  }
}
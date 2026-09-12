import 'package:flutter/material.dart';

import '../l10n/app_strings.dart';
import '../services/app_settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = AppSettings.instance;

    return AnimatedBuilder(
      animation: settings,
      builder: (context, _) {
        final theme = Theme.of(context);

        return Scaffold(
          appBar: AppBar(title: Text(context.tr('settings'))),
          body: ListView(
            children: [
              _SectionHeader(title: context.tr('appearance')),
              SwitchListTile(
                secondary: Icon(
                  settings.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
                title: Text(context.tr('darkMode')),
                subtitle: Text(context.tr('darkModeSubtitle')),
                value: settings.isDarkMode,
                onChanged: settings.setDarkMode,
              ),
              const Divider(),
              _SectionHeader(title: context.tr('language')),
              _LanguageTile(
                label: context.tr('english'),
                languageCode: 'en',
                selectedCode: settings.locale.languageCode,
              ),
              _LanguageTile(
                label: context.tr('arabic'),
                languageCode: 'ar',
                selectedCode: settings.locale.languageCode,
              ),
              const Divider(),
              _SectionHeader(title: context.tr('about')),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                child: Text(
                  context.tr('aboutText'),
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.label,
    required this.languageCode,
    required this.selectedCode,
  });

  final String label;
  final String languageCode;
  final String selectedCode;

  @override
  Widget build(BuildContext context) {
    final isSelected = languageCode == selectedCode;

    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(label),
      trailing: isSelected
          ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary)
          : null,
      selected: isSelected,
      onTap: () => AppSettings.instance.setLanguage(languageCode),
    );
  }
}
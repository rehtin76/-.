import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stars/l10n/app_localizations.dart';
import '../../utils/locale_provider.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentLocale = ref.watch(localeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: ListView(
        children: [
          ListTile(
            title: Text(l10n.language),
            subtitle: Text(_getLanguageName(currentLocale.languageCode)),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              _showLanguageDialog(context, ref);
            },
          ),
          ListTile(
            title: Text(l10n.logout),
            leading: const Icon(Icons.logout),
            onTap: () {
              // Implement logout logic
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'ru': return 'Русский';
      case 'en': return 'English';
      case 'es': return 'Español';
      case 'zh': return '中文';
      default: return code;
    }
  }

  void _showLanguageDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Select Language'),
        children: [
          _buildLanguageOption(context, ref, 'ru', 'Русский'),
          _buildLanguageOption(context, ref, 'en', 'English'),
          _buildLanguageOption(context, ref, 'es', 'Español'),
          _buildLanguageOption(context, ref, 'zh', '中文'),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(BuildContext context, WidgetRef ref, String code, String name) {
    return SimpleDialogOption(
      onPressed: () {
        ref.read(localeProvider.notifier).setLocale(Locale(code));
        Navigator.pop(context);
      },
      child: Text(name),
    );
  }
}

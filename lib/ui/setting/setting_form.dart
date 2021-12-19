// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/providers/locale_notifer_provider.dart';
import 'package:flutter_firebase_sample/providers/theme_mode_notifer_provider.dart';

// Project imports:

class SettingForm extends HookConsumerWidget {
  const SettingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final l10n = L10n.of(context)!;
    final themeMode = ref.watch(themeModeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);

    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        l10n.settingLocale,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButton<Locale?>(
                        value: locale,
                        onChanged: (Locale? locale) {
                          ref
                              .read(localeNotifierProvider.notifier)
                              .setLocale(locale);
                        },
                        items: [
                          DropdownMenuItem(
                            value: null,
                            child: Text(l10n.settingLocaleSystem),
                          ),
                          DropdownMenuItem(
                            value: const Locale('en'),
                            child: Text(l10n.settingLocaleEnglish),
                          ),
                          DropdownMenuItem(
                            value: const Locale('ja'),
                            child: Text(l10n.settingLocaleJapanese),
                          ),
                        ],
                        isExpanded: true,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(l10n.settingTheme,
                          style: Theme.of(context).textTheme.caption),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButton<ThemeMode>(
                        value: themeMode,
                        onChanged: (ThemeMode? themeMode) {
                          ref
                              .read(themeModeNotifierProvider.notifier)
                              .setThemeMode(themeMode ?? ThemeMode.system);
                        },
                        items: [
                          DropdownMenuItem(
                            value: ThemeMode.system,
                            child: Text(l10n.settingThemeSystem),
                          ),
                          DropdownMenuItem(
                            value: ThemeMode.light,
                            child: Text(l10n.settingThemeLight),
                          ),
                          DropdownMenuItem(
                            value: ThemeMode.dark,
                            child: Text(l10n.settingThemeDark),
                          )
                        ],
                        isExpanded: true,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

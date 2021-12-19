// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/app_router.dart';
import 'package:flutter_firebase_sample/config/app_theme_data.dart';
import 'package:flutter_firebase_sample/providers/locale_notifer_provider.dart';
import 'package:flutter_firebase_sample/providers/theme_mode_notifer_provider.dart';

class AppRoot extends HookConsumerWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = useState(false);
    final appRouter = useMemoized(AppRouter.new);
    final themeMode = ref.watch(themeModeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);

    useEffect(() {
      Timer.run(() async {
        await ref.read(themeModeNotifierProvider.notifier).initialize();
        await ref.read(localeNotifierProvider.notifier).initialize();
        isInitialized.value = true;
      });

      return () {};
    }, []);

    if (!isInitialized.value) {
      return const Center(child: CircularProgressIndicator());
    }

    return MaterialApp.router(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,
      onGenerateTitle: (BuildContext context) => L10n.of(context)!.appTitle,
      theme: AppThemeData().light,
      darkTheme: AppThemeData().dark,
      themeMode: themeMode,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}

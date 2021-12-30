// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router.dart';
import 'package:flutter_firebase_sample/providers/firebase_auth_state_changes_stream_provider.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(firebaseAuthStateChangesStreamProvider).value;

    useEffect(() {
      if (user == null) {
        AutoRouter.of(context).replaceAll([const CounterRoute()]);
      }
    }, [user]);

    return const ProfileScreen(providerConfigs: [EmailProviderConfiguration()]);
  }
}

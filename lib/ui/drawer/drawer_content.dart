// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router.dart';
import 'package:flutter_firebase_sample/providers/firebase_auth_provider.dart';
import 'package:flutter_firebase_sample/providers/firebase_auth_state_changes_stream_provider.dart';

class DrawerContent extends HookConsumerWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: _drawerChildren(context, ref),
      ),
    );
  }

  List<Widget> _drawerChildren(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context)!;
    final user = ref.watch(firebaseAuthStateChangesStreamProvider).value;

    final drawerHeader = DrawerHeader(
        decoration: BoxDecoration(
          color: theme.primaryColor,
        ),
        child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text(l10n.appTitle,
                style: const TextStyle(fontSize: 24, color: Colors.white))));

    final counterListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.plusSquare),
      title: Text(l10n.counterTitle),
      onTap: () {
        Navigator.pop(context);
        AutoRouter.of(context).replaceAll([const CounterRoute()]);
      },
    );

    final settingListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.cog),
      title: Text(l10n.settingTitle),
      onTap: () {
        Navigator.pop(context);
        AutoRouter.of(context).push(const SettingRoute());
      },
    );

    final signInListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.signInAlt),
      title: Text(l10n.signInTitle),
      onTap: () {
        Navigator.pop(context);
        AutoRouter.of(context).replaceAll([const SignInRoute()]);
      },
    );

    final signOutListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.signOutAlt),
      title: Text(l10n.signOut),
      onTap: () {
        ref.read(firebaseAuthProvider).signOut();
        Navigator.pop(context);
        AutoRouter.of(context).replaceAll([const CounterRoute()]);
      },
    );

    final profileListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.userAlt),
      title: Text(l10n.profileTitle),
      onTap: () {
        Navigator.pop(context);
        AutoRouter.of(context).push(const ProfileRoute());
      },
    );

    final taskListListTile = ListTile(
      leading: const Icon(FontAwesomeIcons.listAlt),
      title: Text(l10n.taskListTitle),
      onTap: () {
        Navigator.pop(context);
        AutoRouter.of(context).replaceAll([const TaskListRoute()]);
      },
    );

    final children = <Widget>[drawerHeader, counterListTile];

    if (user == null) {
      children.addAll([signInListTile]);
    } else {
      children.addAll([taskListListTile, profileListTile, signOutListTile]);
    }

    children.add(settingListTile);

    return children;
  }
}

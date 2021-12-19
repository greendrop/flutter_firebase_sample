// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/app_router.dart';

class DrawerContent extends HookConsumerWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context)!;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: theme.primaryColor,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(l10n.appTitle,
                      style:
                          const TextStyle(fontSize: 24, color: Colors.white)))),
          ListTile(
            leading: const Icon(FontAwesomeIcons.plusSquare),
            title: Text(l10n.counterTitle),
            onTap: () {
              Navigator.pop(context);
              AutoRouter.of(context).replaceAll([const CounterRoute()]);
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.cog),
            title: Text(l10n.settingTitle),
            onTap: () {
              Navigator.pop(context);
              AutoRouter.of(context).push(const SettingRoute());
            },
          ),
        ],
      ),
    );
  }
}

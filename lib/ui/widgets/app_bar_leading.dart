// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarLeading extends HookConsumerWidget {
  const AppBarLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AutoRouter.of(context);
    return IconButton(
        icon: Icon(router.canPopSelfOrChildren ? Icons.arrow_back : Icons.menu),
        onPressed: () {
          if (router.canPopSelfOrChildren) {
            router.pop();
          } else {
            Scaffold.of(context).openDrawer();
          }
        });
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_firebase_sample/ui/counter/counter_page.dart';
import 'package:flutter_firebase_sample/ui/setting/setting_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<Widget>>[
    AutoRoute<Widget>(path: '/counter', page: CounterPage, initial: true),
    AutoRoute<Widget>(path: '/setting', page: SettingPage),
  ],
)
class AppRouter extends _$AppRouter {}

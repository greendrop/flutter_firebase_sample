// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_firebase_sample/ui/counter/counter_page.dart';
import 'package:flutter_firebase_sample/ui/profile/profile_page.dart';
import 'package:flutter_firebase_sample/ui/setting/setting_page.dart';
import 'package:flutter_firebase_sample/ui/sign_in/sign_in_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<Widget>>[
    AutoRoute<Widget>(path: '/counter', page: CounterPage, initial: true),
    AutoRoute<Widget>(path: '/setting', page: SettingPage),
    AutoRoute<Widget>(path: '/sign_in', page: SignInPage),
    AutoRoute<Widget>(path: '/profile', page: ProfilePage),
  ],
)
class AppRouter extends _$AppRouter {}

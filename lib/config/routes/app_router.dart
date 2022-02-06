// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router_auth_guard.dart';
import 'package:flutter_firebase_sample/ui/counter/counter_page.dart';
import 'package:flutter_firebase_sample/ui/profile/profile_page.dart';
import 'package:flutter_firebase_sample/ui/setting/setting_page.dart';
import 'package:flutter_firebase_sample/ui/sign_in/sign_in_page.dart';
import 'package:flutter_firebase_sample/ui/task/task_create/task_create_page.dart';
import 'package:flutter_firebase_sample/ui/task/task_detail/task_detail_page.dart';
import 'package:flutter_firebase_sample/ui/task/task_list/task_list_page.dart';
import 'package:flutter_firebase_sample/ui/task/task_update/task_update_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<Widget>>[
    AutoRoute<Widget>(path: '/counter', page: CounterPage, initial: true),
    AutoRoute<Widget>(path: '/setting', page: SettingPage),
    AutoRoute<Widget>(path: '/sign_in', page: SignInPage),
    AutoRoute<Widget>(path: '/profile', page: ProfilePage),
    AutoRoute<Widget>(
        path: '/tasks', page: TaskListPage, guards: [AppRouterAuthGuard]),
    AutoRoute<Widget>(
        path: '/task/new', page: TaskCreatePage, guards: [AppRouterAuthGuard]),
    AutoRoute<Widget>(
        path: '/task/:id', page: TaskDetailPage, guards: [AppRouterAuthGuard]),
    AutoRoute<Widget>(
        path: '/task/:id/edit',
        page: TaskUpdatePage,
        guards: [AppRouterAuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter() : super(appRouterAuthGuard: AppRouterAuthGuard());
}

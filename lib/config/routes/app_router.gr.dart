// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey,
      required this.appRouterAuthGuard})
      : super(navigatorKey);

  final AppRouterAuthGuard appRouterAuthGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const CounterPage());
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const SettingPage());
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const SignInPage());
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const ProfilePage());
    },
    TaskListRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const TaskListPage());
    },
    TaskDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TaskDetailRouteArgs>(
          orElse: () => TaskDetailRouteArgs(id: pathParams.getString('id')));
      return MaterialPageX<Widget>(
          routeData: routeData,
          child: TaskDetailPage(key: args.key, id: args.id));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/counter', fullMatch: true),
        RouteConfig(CounterRoute.name, path: '/counter'),
        RouteConfig(SettingRoute.name, path: '/setting'),
        RouteConfig(SignInRoute.name, path: '/sign_in'),
        RouteConfig(ProfileRoute.name, path: '/profile'),
        RouteConfig(TaskListRoute.name,
            path: '/tasks', guards: [appRouterAuthGuard]),
        RouteConfig(TaskDetailRoute.name,
            path: '/task/:id', guards: [appRouterAuthGuard])
      ];
}

/// generated route for
/// [CounterPage]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: '/counter');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign_in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [TaskListPage]
class TaskListRoute extends PageRouteInfo<void> {
  const TaskListRoute() : super(TaskListRoute.name, path: '/tasks');

  static const String name = 'TaskListRoute';
}

/// generated route for
/// [TaskDetailPage]
class TaskDetailRoute extends PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({Key? key, required String id})
      : super(TaskDetailRoute.name,
            path: '/task/:id',
            args: TaskDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'TaskDetailRoute';
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, id: $id}';
  }
}

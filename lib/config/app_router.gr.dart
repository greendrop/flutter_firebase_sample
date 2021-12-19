// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const CounterPage());
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<Widget>(
          routeData: routeData, child: const SettingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/counter', fullMatch: true),
        RouteConfig(CounterRoute.name, path: '/counter'),
        RouteConfig(SettingRoute.name, path: '/setting')
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

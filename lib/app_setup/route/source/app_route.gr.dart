// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/auth/presentation/auth_screen.dart' as _i2;
import '../../../features/dashboard/presentation/dashboard_screen.dart' as _i3;
import '../../../features/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i2.AuthScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.DashboardScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(AuthRoute.name, path: '/auth-screen'),
        _i4.RouteConfig(DashboardRoute.name, path: '/dashboard-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.AuthScreen]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(name, path: '/auth-screen');

  static const String name = 'AuthRoute';
}

/// generated route for [_i3.DashboardScreen]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: '/dashboard-screen');

  static const String name = 'DashboardRoute';
}

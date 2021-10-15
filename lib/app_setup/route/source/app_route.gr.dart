// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../../features/auth/presentation/auth_screen.dart' as _i2;
import '../../../features/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i3.MaterialPageX<void>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthRoute.name: (routeData) {
      return _i3.MaterialPageX<void>(
          routeData: routeData, child: const _i2.AuthScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SplashRoute.name, path: '/'),
        _i3.RouteConfig(AuthRoute.name, path: '/auth-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.AuthScreen]
class AuthRoute extends _i3.PageRouteInfo<void> {
  const AuthRoute() : super(name, path: '/auth-screen');

  static const String name = 'AuthRoute';
}

// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // AutoRouteGenerator
// // **************************************************************************

// import 'package:auto_route/auto_route.dart' as _i1;
// import 'package:flutter/material.dart' as _i2;

// import '../../../features/auth/presentation/auth_screen.dart' as _i4;
// import '../../../features/dashboard/presentation/dashboard_screen.dart' as _i5;
// import '../../../features/splash_screen/splash_screen.dart' as _i3;

// class AppRouter extends _i1.RootStackRouter {
//   AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
//       : super(navigatorKey);

//   @override
//   final Map<String, _i1.PageFactory> pagesMap = {
//     SplashRoute.name: (routeData) => _i1.MaterialPageX<void>(
//         routeData: routeData,
//         builder: (_) {
//           return const _i3.SplashScreen();
//         }),
//     AuthRoute.name: (routeData) => _i1.MaterialPageX<void>(
//         routeData: routeData,
//         builder: (_) {
//           return const _i4.AuthScreen();
//         }),
//     DashboardRoute.name: (routeData) => _i1.MaterialPageX<void>(
//         routeData: routeData,
//         builder: (_) {
//           return const _i5.DashboardScreen();
//         })
//   };

//   @override
//   List<_i1.RouteConfig> get routes => [
//         _i1.RouteConfig(SplashRoute.name, path: '/'),
//         _i1.RouteConfig(AuthRoute.name, path: '/auth-screen'),
//         _i1.RouteConfig(DashboardRoute.name, path: '/dashboard-screen')
//       ];
// }

// class SplashRoute extends _i1.PageRouteInfo {
//   const SplashRoute() : super(name, path: '/');

//   static const String name = 'SplashRoute';
// }

// class AuthRoute extends _i1.PageRouteInfo {
//   const AuthRoute() : super(name, path: '/auth-screen');

//   static const String name = 'AuthRoute';
// }

// class DashboardRoute extends _i1.PageRouteInfo {
//   const DashboardRoute() : super(name, path: '/dashboard-screen');

//   static const String name = 'DashboardRoute';
// }

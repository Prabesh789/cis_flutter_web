import 'package:auto_route/auto_route.dart';
import 'package:cis_project/features/auth/presentation/auth_screen.dart';
import 'package:cis_project/features/splash_screen/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<void>(
      // page: AppStateObserver,
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute<void>(
      page: AuthScreen,
    ),
  ],
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
)
class $AppRouter {}

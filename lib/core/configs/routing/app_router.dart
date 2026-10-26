import 'package:clean_arch_training/core/configs/routing/app_routes.dart';
import 'package:clean_arch_training/feature/splash/presentation/pages/splash_pages.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.splashPage,
    routes: [
      GoRoute(
        path: AppRoutes.splashPage,
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );
}

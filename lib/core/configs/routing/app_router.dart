import 'package:clean_arch_training/core/configs/routing/app_routes.dart';
import 'package:clean_arch_training/feature/choose_mode/presentation/views/choose_mode_view.dart';
import 'package:clean_arch_training/feature/get_started/presentation/views/get_started_view.dart';
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
      GoRoute(
        path: AppRoutes.getStartedView,
        name: AppRoutes.getStartedView,
        builder: (context, state) => GetStartedView(),
      ),
      GoRoute(
        path: AppRoutes.chooseModeView,
        name: AppRoutes.chooseModeView,
        builder: (context, state) => ChooseModeView(),
      ),
    ],
  );
}

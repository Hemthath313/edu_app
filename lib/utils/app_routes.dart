import 'package:edu_app/utils/page_transition.dart';
import 'package:edu_app/utils/pagepath.dart';
import 'package:edu_app/view/forgot_password/forgot_password_screen.dart';
import 'package:edu_app/view/login_screen/login_screen_screen.dart';
import 'package:edu_app/view/splash_screen/splash_screen_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
      initialLocation: PagePath.splash,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: PagePath.splash,
          builder: (context, state) => const MySplashScreen(),
        ),
        GoRoute(
          path: PagePath.login,
          pageBuilder: (context, state) =>
              PageTransitions.buildPageWithSlideTransition(
                  state.pageKey, const LoginPage()),
        ),
        GoRoute(
          path: PagePath.forgotPassword,
          pageBuilder: (context, state) =>
              PageTransitions.buildPageWithSlideTransition(
                  state.pageKey, const ForgotPasswordScreen()),
        )
      ]);
}

import 'package:rafeeq/Features/auth/presentation/screens/login_screen.dart';
import 'package:rafeeq/Features/details/presentation/screens/details_screen.dart';
import 'package:rafeeq/Features/home/presentation/screens/home_screen.dart';
import 'package:rafeeq/Features/main/main_screen.dart';
import 'package:rafeeq/Features/on_boarding_screens/screens/on_boarding_screen.dart';
import 'package:rafeeq/Features/auth/presentation/screens/register_screen.dart';
import 'package:rafeeq/Features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:rafeeq/Features/settings/settings_screen.dart';
import 'package:rafeeq/Features/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:rafeeq/Features/search/presentation/screens/search_screen.dart';

class AppRouter {
  static const String splashScreen = '/';
  static const String homeScreen = '/home';
  static const String onboardingScreen = '/onboarding';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String mainScreen = '/mainScreen';
  static const String searchScreen = '/searchScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String settingsScreen = '/settingsScreen';
  static const String guideDetailsScreen = '/guideDetailsScreen';
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRouter.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRouter.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRouter.onboardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: AppRouter.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRouter.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRouter.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: AppRouter.searchScreen,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: AppRouter.editProfileScreen,
      builder: (context, state) => const EditProfileScreen(),
    ),
    GoRoute(
      path: AppRouter.settingsScreen,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: AppRouter.guideDetailsScreen,
      builder: (context, state) => const DetailsScreen(),
    ),
  ],
);

import 'package:go_router/go_router.dart';
import 'package:leafy/features/authentication/views/screens/login_screen.dart';
import 'package:leafy/features/authentication/views/screens/registration_screen.dart';
import 'package:leafy/features/cartManagement/views/screens/cart_screen.dart';
import 'package:leafy/features/dashBoard/screens/bottom_nav_screen.dart';
import 'package:leafy/features/on_boarding/views/screens/splash_screen.dart';
import 'package:leafy/features/profile_management/views/screens/my_profile_screen.dart';
import 'package:leafy/features/searching/views/screens/searching_screen.dart';

class AppRouter {
  static const String splashName = 'splash';
  static const String loginName = 'login';
  static const String registrationName = 'registration';
  static const String dashboardName = 'dashboard';
  static const String cartName = 'cart';
  static const String searchName = 'search';
  static const String profileName = 'profile';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/$splashName',
        name: splashName,
        builder: (context, state) => const MyProfileScreen(),
      ),
      GoRoute(
        path: '/$loginName',
        name: loginName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/$registrationName',
        name: registrationName,
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: '/$dashboardName',
        name: dashboardName,
        builder: (context, state) => const BottomNavScreen(),
      ),
      GoRoute(
        path: '/$cartName',
        name: cartName,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: '/$searchName',
        name: searchName,
        builder: (context, state) => const SearchingScreen(),
      ),
      GoRoute(
        path: '/$profileName',
        name: profileName,
        builder: (context, state) => const MyProfileScreen(),
      ),
    ],
    initialLocation: '/$splashName',
  );
}

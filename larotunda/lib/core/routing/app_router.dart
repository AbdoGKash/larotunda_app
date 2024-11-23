import 'package:flutter/material.dart';
import 'package:larotunda/core/routing/routers_name.dart';
import 'package:larotunda/features/login/view/login_screen.dart';
import 'package:larotunda/features/registering/view/sign_up_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutersName.onboarding:
      //   return MaterialPageRoute(
      //     builder: (_) => const OboardingScreen(),
      //   );
      case RoutersName.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case RoutersName.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      // case RoutersName.homeSreen:
      //   return MaterialPageRoute(
      //     builder: (_) => HomeScreen(),
      //   );
      // case RoutersName.itemsScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => ItemsScreen(),
      //   );
      // case RoutersName.itemsDetilsScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => OrderDetilesScreen(),
      //   );
      // case RoutersName.favoriteScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const FavoritesScreen(),
      //   );
      // case RoutersName.cartScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const CartScreen(),
      //   );
      // case RoutersName.checkout:
      //   return MaterialPageRoute(
      //     builder: (_) => const CheckoutPage(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
    }
  }
}

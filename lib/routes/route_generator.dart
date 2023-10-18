import 'package:e_shop/screens/auth/hero_page.dart';
import 'package:e_shop/screens/auth/sign_in_page.dart';
import 'package:e_shop/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static generateRoute(RouteSettings s) {
    // var args = s.arguments;
    switch (s.name) {
      case '/hero_page':
        return MaterialPageRoute(builder: (_) => const HeroPage());

      case '/home_page':
        return MaterialPageRoute(builder: (_) => const HomePage());

      case '/sign_in':
        return MaterialPageRoute(builder: (_) => const SignInPage());
    }
  }
}

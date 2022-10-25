import 'package:flutter/material.dart';
import 'package:kfs_user/dashboard/dashboard.dart';
import 'package:kfs_user/login/view/login.dart';
import 'package:kfs_user/routes/Route_constants.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case RouteConstants.userSignUp:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
    }
  }
}

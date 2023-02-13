import 'package:flutter/material.dart';
import 'package:kfs_user/batteryServices/view/battery_service.dart';
import 'package:kfs_user/carWash/view/carWash.dart';
import 'package:kfs_user/dashboard/dashboard.dart';
import 'package:kfs_user/engineOil/engineOil.dart';
import 'package:kfs_user/feedback/feedback.dart';

import 'package:kfs_user/fuelDelivery/view/fuelDelivery.dart';
import 'package:kfs_user/login/view/login.dart';
import 'package:kfs_user/routes/route_constants.dart';
import 'package:kfs_user/signUp/view/signUp.dart';
import 'package:kfs_user/tyreService/tyreService.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case RouteConstants.userSignUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );

      case RouteConstants.userDashboard:
        return MaterialPageRoute(
          builder: (context) => const DashBoard(),
        );

      case RouteConstants.userFuelDelivery:
        return MaterialPageRoute(
          builder: (context) => const FuelService(),
        );

      case RouteConstants.userBatteryServices:
        return MaterialPageRoute(
          builder: (context) => const BatteryService(),
        );

      case RouteConstants.userCarWash:
        return MaterialPageRoute(
          builder: (context) => const CarWashService(),
        );

      case RouteConstants.userEngineOil:
        return MaterialPageRoute(
          builder: (context) => const EngineOilService(),
        );

      case RouteConstants.userTyre:
        return MaterialPageRoute(
          builder: (context) => const TyreService(),
        );

      case RouteConstants.userFeedback:
        return MaterialPageRoute(
          builder: (context) => const FeedbacknReminder(),
          );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
  }
}

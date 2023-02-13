import 'package:flutter/material.dart';
import 'package:kfs_user/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  Future _navigateToLogin() async {
    await Future<void>.delayed(const Duration(seconds: 6));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          // child: Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: DecoratedBox(
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage(
          //           'assets/images/splash.jpeg',
          //         ),
          //         fit: BoxFit.cover,
          //       ),
          //       boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
          //     ),
          // child: Center(
          // AnimationDeveloperTools(
          //   child: Center(
          //     child: PlayAnimationBuilder<double>(
          //       tween: Tween<double>(begin: 0.0, end: 100.0),
          //       duration: const Duration(seconds: 1),
          //       developerMode: true, // enable developer mode
          //       builder: (context, value, child) {
          //         return Container(
          //           width: value,
          //           height: value,
          //           color: Colors.blue,
          //         );
          //       },
          //     ),
          //   ),
          // ),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.car_repair,
                  size: 50,
                ),
                Text(
                  'K  F  S',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Faster  Simpler  Smarter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

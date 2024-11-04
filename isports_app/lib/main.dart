import 'package:flutter/material.dart';
import 'package:isports_app/screens/onbording/onboarding_screen.dart';
import 'package:isports_app/screens/onbording/onboarding_step1.dart';
import 'package:isports_app/screens/onbording/onboarding_step2.dart';
import 'package:isports_app/screens/onbording/onboarding_step3.dart';

import 'package:isports_app/screens/splash_screen.dart';
import 'package:isports_app/screens/login/login_screen.dart';
import 'package:isports_app/screens/login/otp_verification_screen.dart';

void main() {
  runApp(const iSportsApp());
}

class iSportsApp extends StatelessWidget {
  const iSportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSports App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Initial route
      routes: {
        '/': (context) => const SplashScreen(), // SplashScreen as initial
        '/onboarding_screen': (context) => Onboardingscreen(),
        '/onboarding_step1': (context) => Onboardingstep1(),
        '/onboarding_step2': (context) => Onboardingstep2(),
        '/onboarding_step3': (context) => Onboardingstep3(),
        '/login': (context) => LoginScreen(),
        '/otp_verification': (context) => OTPVerificationScreen(),
      },
    );
  }
}

// Splash Screen Implementation
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen(); // Start navigation on init
  }

  void _navigateToNextScreen() async {
    // Add a delay before navigating
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/onboarding_screen'); // Navigate to onboarding screen
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to iSports!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

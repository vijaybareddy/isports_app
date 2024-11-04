import 'package:flutter/material.dart';
import 'package:isports_app/screens/onbording/onboarding_screen.dart';
import 'package:isports_app/screens/onbording/onboarding_step1.dart';
import 'package:isports_app/screens/onbording/onboarding_step2.dart';
import 'package:isports_app/screens/onbording/onboarding_step3.dart';
import 'package:isports_app/screens/splash_screen.dart';
import 'package:isports_app/screens/login/login_screen.dart';
import 'package:isports_app/screens/login/otp_verification_screen.dart';

void main() {
  runApp(iSportsApp());
}

class iSportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSports App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding_screen': (context) => OnboardingScreen(),
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/onboarding3': (context) => OnboardingScreen3(),
        '/login': (context) => LoginScreen(),
        '/otp_verification': (context) => OTPVerificationScreen(),
      },
    );
  }
}

// Example Splash Screen Implementation
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding_screen');
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to iSports!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

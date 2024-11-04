import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Step 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/onboarding3.png'), // Adjust path as necessary
          SizedBox(height: 20),
          Text('Get started with iSports now!'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Continue to Login'),
          ),
        ],
      ),
    );
  }
}
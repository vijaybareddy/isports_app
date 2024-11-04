import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Step 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/onboarding2.png'), // Adjust path as necessary
          SizedBox(height: 20),
          Text('Learn how to manage your teams!'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/onboarding3');
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
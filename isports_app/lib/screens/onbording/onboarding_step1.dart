import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Step 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/onboarding1.png'), // Adjust path as necessary
          SizedBox(height: 20),
          Text(
            'Welcome to iSports!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is the first step of onboarding.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/onboarding2');
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

// Repeat similar structure for OnboardingScreen2 and OnboardingScreen3

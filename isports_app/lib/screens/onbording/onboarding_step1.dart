import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Onboardingstep1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Placeholder(fallbackHeight: 150), // Replace with actual graphics if available
            const SizedBox(height: 20),
            const Text(
              'Build and Manage Teams',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Easily create teams, add players, and coordinate with your squad for upcoming events.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: const Text('Get started'))
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Onboardingscreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingPage(
            title: 'Build and Manage Teams',
            description: 'Easily create teams, manage schedules, and get started with sports management.',
          ),
          OnboardingPage(
            title: 'Create and Host Events',
            description: 'Organize sports events and invite players and teams to participate.',
          ),
          OnboardingPage(
            title: 'Search and Hire Players',
            description: 'Find the best players for your team based on skills and performance.',
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          child: Text('Get Started'),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  OnboardingPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}

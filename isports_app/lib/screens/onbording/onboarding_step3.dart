import 'package:flutter/material.dart';

class Onboardingstep3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Placeholder(fallbackHeight: 150),
            SizedBox(height: 20),
            Text(
              'Search and Hire Players',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Look for players to join your team or find teams needing players for specific roles.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: Text('Get started'))
          ],
        ),
      ),
    );
  }
}

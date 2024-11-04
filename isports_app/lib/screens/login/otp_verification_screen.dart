import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP Verification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('OTP Verification', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              'We have sent a 6-digit OTP code to your mobile number. Enter the code below to verify your access.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(
                labelText: 'Enter OTP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Verify OTP code logic here
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Resend OTP logic here
              },
              child: Text("Didn't receive code? Resend Code"),
            ),
          ],
        ),
      ),
    );
  }
}

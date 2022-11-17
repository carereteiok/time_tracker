
import 'package:flutter/material.dart';
import 'package:time_tracker/app/signin/SigninButton.dart';
import 'package:time_tracker/app/signin/signinSocialMedia.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key, required this.onSignIn});
  final void Function(User) onSignIn;

  Future<User?>_signInAnonymously() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(userCredential.user!);
    }catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFbbdefb),
      body: _buildContainer(),
    );
  }
  Widget _buildContainer() {

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('images/stopwatch.png', width: 150, height: 150),
          Text(
            'Time Tracker',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height:150.0,
          ),
          Text(
            'Track your time for a productive day',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 30.0),
          SignInSocialMedia(
              text: 'Sign in with Google',
              backgroundColor: Colors.white,
              textColor: Colors.black87,
              onPressed: () {},
              assetImages: 'images/google-logo1.png'),
          SizedBox(height: 8.0),
          SignInSocialMedia(
              text: 'Sign in with facebook',
              backgroundColor: Color(0xFF334D92),
              textColor: Colors.white,
              onPressed: () {},
              assetImages: 'images/facebook1.png'),
          SizedBox(height: 8.0),
          Text('OR',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 8.0),
          SignInButton(
              text: 'Go Anonymous',
              backgroundColor: Colors.yellow.shade300,
              textColor: Colors.black87,
              onPressed: _signInAnonymously),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

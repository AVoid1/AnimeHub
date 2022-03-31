import 'package:flutter/material.dart';
import 'package:anime/components/rounded_button.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(9, 50, 9, 62),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color(0xff2c2c2c)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'images/logo.png',
                    scale: 3,
                  ),
                ),
                const Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                        fontFamily: 'Asap',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                RoundedButton(
                  colour: Colors.red.withOpacity(0.75),
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignInScreen();
                    }));
                  },
                  title: 'Sign In',
                ),
                RoundedButton(
                  colour: Color(0xff202020),
                  onPress: () {},
                  title: 'Sign Up',
                )
              ],
            ),
          )),
    );
  }
}

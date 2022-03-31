import 'package:flutter/material.dart';
import 'package:anime/components/input_field.dart';
import 'package:anime/components/rounded_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Hero(
                  tag: 'logo',
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Image.asset(
                      'images/logo.png',
                      scale: 3.4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, right: 20),
                  child: Hero(
                    tag: 'sign In',
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.red.withOpacity(0.75),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Asap',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                InputField(
                  value: false,
                  title1: 'Enter your username',
                  title2: 'username',
                ),
                const SizedBox(height: 10),
                InputField(
                  value: true,
                  title1: 'Enter your password',
                  title2: 'password',
                ),
                RoundedButton(
                  onPress: () {},
                  colour: Colors.red.withOpacity(0.75),
                  title: 'Sign In',
                ),
                Divider(
                  color: Colors.white.withOpacity(0.75),
                  endIndent: 10,
                  indent: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:anime/components/rounded_button.dart';
import 'authentication_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(padding: const EdgeInsets.all(10)),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'images/logo.png',
                    scale: 4,
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: const EdgeInsets.only(top: 20)),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                color: Color(0xff2c2c2c),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'images/icon1.png',
                    scale: 1,
                  ),
                  const Text(
                    'Anime hub reminds you all'
                    '\nthe upcoming anime . By '
                    '\na single tap you can get info of any'
                    '\nanime at anytime anywhere',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Asap',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                    colour: Colors.red.withOpacity(0.75),
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AuthenticationScreen();
                      }));
                    },
                    title: 'Get Started',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

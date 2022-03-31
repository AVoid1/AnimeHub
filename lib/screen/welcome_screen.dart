import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'getstarted_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      (() => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return GetStarted();
            }),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff202020),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xff202020)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        child: Hero(
                          tag: 'logo',
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      const Text(
                        'Anime Hub',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Audiowide',
                            fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SpinKitChasingDots(
                        color: Colors.white,
                        size: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text(
                        'Welcome to the Hub',
                        style: TextStyle(
                          fontFamily: 'Asap',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

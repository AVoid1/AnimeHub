import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'screen/welcome_screen.dart';
import 'screen/getstarted_screen.dart';
import 'screen/authentication_screen.dart';
import 'screen/signin_screen.dart';
import 'screen/signup_screen.dart';

void main() {
  runApp(const AnimeHub());
}

class AnimeHub extends StatelessWidget {
  const AnimeHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/4',
      routes: {
        '/': (context) => HomeScreen(),
        '/1': (context) => WelcomeScreen(),
        '/2': (context) => GetStarted(),
        '/3': (context) => AuthenticationScreen(),
        '/4': (context) => SignInScreen()
      },
    );
  }
}

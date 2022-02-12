import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

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
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
    );
  }
}

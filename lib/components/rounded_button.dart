import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color colour;
  final String title;
  final VoidCallback onPress;

  RoundedButton({
    required this.colour,
    required this.onPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      child: Material(
        elevation: 5,
        color: colour,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 50,
          height: 50,
          child: Hero(
            tag: 'sign In',
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Asap',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

BoxDecoration buildBackground() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.purple,
        Colors.blue,
      ],
    ),
  );
}

InputDecoration buildInputDecoration(String hinttext) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 18,
      horizontal: 15,
    ),
    hintText: hinttext,
    hintStyle: const TextStyle(
      color: Colors.white54,
    ),
    fillColor: Colors.white10,
    filled: true,
    border: InputBorder.none,
  );
}

Widget forgotComponent() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      Flexible(
        flex: 3,
        child: Text(
          'Forgot your password?',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ),
      Flexible(
        flex: 2,
        child: Text(
          ' Get help signing in.',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

mixin Utils {
  Future<void> push(BuildContext context, Widget destination) async {
    Navigator.of(context).push<dynamic>(
      MaterialPageRoute<dynamic>(builder: (context) => destination),
    );
  }
}

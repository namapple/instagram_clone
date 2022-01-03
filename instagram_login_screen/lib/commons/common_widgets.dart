import 'package:flutter/material.dart';

// Build text field
Widget buildTextField({required String text, bool hide = false}) {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: const BoxDecoration(
      color: Colors.white10,
    ),
    height: 55,
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: TextField(
        obscureText: hide,
        style: const TextStyle(
          color: Colors.white60,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          // filled: true,
          // fillColor: Colors.transparent,
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.white54,
          ),
          border: InputBorder.none,
          // contentPadding: EdgeInsets.only(top: 14),
        ),
      ),
    ),
  );
}

// Build Button
Widget buildButton({required String text}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () => print('$text Pressed'),
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

// Build bottom text
Widget buildSignUpText(
  BuildContext context,
  void Function() onpressed,
) {
  const textSignUp = Text(
    ' Log In',
    style: TextStyle(
      color: Colors.white70,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      const Text(
        'Already have an account?',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
      ),
      GestureDetector(
        onTap: onpressed,
        child: textSignUp,
      ),
    ],
  );
}

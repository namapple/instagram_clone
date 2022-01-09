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

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.validator,
    this.hideText = false,
    this.onSaved,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool hideText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white60, fontSize: 20),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: buildInputDecoration(hintText),
      validator: validator,
      obscureText: hideText,
      onSaved: onSaved,
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    Key? key,
    required this.textButton,
    required this.onPress,
  }) : super(key: key);

  final String textButton;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 23,
        ),
      ),
    );
  }
}

class BuildBottomText extends StatelessWidget {
  const BuildBottomText({
    Key? key,
    required this.questionText,
    required this.actionText,
    required this.onTap,
  }) : super(key: key);

  final String questionText;
  final String actionText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Flexible(
          flex: 3,
          child: Text(
            questionText,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              ' $actionText',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_login_screen/commons/common_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple,
                Colors.blue,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 30,
              right: 30,
            ),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      const Icon(
                        Icons.add_a_photo_outlined,
                        size: 120,
                        color: Colors.white70,
                      ),
                      const SizedBox(height: 30),
                      buildTextField(text: 'Email'),
                      const SizedBox(height: 20),
                      buildTextField(text: 'Password', hide: true),
                      const SizedBox(height: 20),
                      buildTextField(text: 'Confirm Password', hide: true),
                      const SizedBox(height: 20),
                      buildTextField(text: 'Fullname'),
                      const SizedBox(height: 20),
                      buildTextField(text: 'Username'),
                      const SizedBox(height: 20),
                      buildButton(text: 'Sign Up'),
                      const SizedBox(height: 20),
                    ],
                  ),
                  buildSignUpText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_login_screen/screens/login/login_screen.dart';

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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.add_a_photo_outlined,
                  size: 120,
                  color: Colors.white70,
                ),
                const SizedBox(height: 50),
                buildTextField(text: 'Email'),
                const SizedBox(height: 25),
                buildTextField(text: 'Password', hide: true),
                const SizedBox(height: 25),
                buildTextField(text: 'Fullname'),
                const SizedBox(height: 25),
                buildTextField(text: 'Username'),
                const SizedBox(height: 25),
                buildButton(text: 'Sign Up'),
                const SizedBox(height: 25),
                const Spacer(),
                buildSignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

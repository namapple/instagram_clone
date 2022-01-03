import 'package:flutter/material.dart';
import 'package:instagram_login_screen/commons/common_class.dart';
import 'package:instagram_login_screen/commons/common_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> with Utils {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.add_circle_outlined,
                size: 120,
                color: Colors.white70,
              ),
              const SizedBox(height: 50),
              buildTextField(text: 'Email'),
              const SizedBox(height: 25),
              buildTextField(text: 'Password', hide: true),
              const SizedBox(height: 25),
              buildTextField(text: 'Confirm Password', hide: true),
              const SizedBox(height: 25),
              buildTextField(text: 'Fullname'),
              const SizedBox(height: 25),
              buildTextField(text: 'Username'),
              const SizedBox(height: 25),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 18),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              buildSignUpText(context, () => Navigator.of(context).pop()),
            ],
          ),
        ),
      ),
    );
  }
}

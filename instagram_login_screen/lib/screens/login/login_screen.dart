import 'package:flutter/material.dart';
import 'package:instagram_login_screen/app_assets.dart';
import 'package:instagram_login_screen/commons/common_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: (namdd) transfer declare material app to main.dart
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
              top: 78,
              bottom: 10,
              left: 30,
              right: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Image.asset(AppImg.imgLogo),
                    const SizedBox(height: 30),
                    buildTextField(text: 'Email'),
                    const SizedBox(height: 25),
                    buildTextField(text: 'Password', hide: true),
                    const SizedBox(height: 25),
                    buildButton(text: 'Log In'),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          flex: 2,
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Text(
                            ' Get help signing in.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ), // const Spacer(),
                buildSignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// Text Field Template
Widget buildTextField({required String text, bool hide = false }) {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 60,
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

Widget buildButton({required String text}) {
  return ElevatedButton(
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    onPressed: () => print('$text Pressed'),
    style: ElevatedButton.styleFrom(
      primary: Colors.lightBlue,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget buildSignUpText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const <Widget>[
      Text(
        'Don\'t have an account?',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
      ),
      Text(
        ' Sign Up',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

class _LoginScreenState extends State<LoginScreen> {
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
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                buildTextField(text: 'Email'),
                const SizedBox(height: 25),
                buildTextField(text: 'Password', hide: true),
                const SizedBox(height: 25),
                buildButton(text: 'Log In'),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      ' Get help signing in.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                buildSignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

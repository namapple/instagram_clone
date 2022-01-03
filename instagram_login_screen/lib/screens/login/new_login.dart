import 'package:flutter/material.dart';
import 'package:instagram_login_screen/commons/common_class.dart';
import 'package:instagram_login_screen/screens/Signup/new_signup.dart';

import '../../app_assets.dart';

class NewLoginScreen extends StatefulWidget {
  const NewLoginScreen({Key? key}) : super(key: key);

  @override
  _NewLoginScreenState createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> with Utils {
  String? _email;
  String? _password;
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: buildBackground(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 78,
            bottom: 10,
            left: 30,
            right: 30,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(AppImg.imgLogo),
                    const SizedBox(height: 30),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                      // child: TextFormField(
                      //   style: const TextStyle(
                      //       color: Colors.white60, fontSize: 20),
                      //   controller: _emailController,
                      //   keyboardType: TextInputType.emailAddress,
                      //   decoration: buildInputDecoration("Email"),
                      //   validator: (value) {
                      //     if (value == null || value.isEmpty) {
                      //       return 'Please enter your email address';
                      //     }
                      //     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //       return 'Please enter a valid email address';
                      //     }
                      //     return null;
                      //   },
                      //   onSaved: (value) {
                      //     _email = value;
                      //   },
                      // ),
                      child: CommonTextField(
                        hintText: 'Email',
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(
                            color: Colors.white60, fontSize: 20),
                        controller: _passwordController,
                        decoration: buildInputDecoration("Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Everything looks good')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    forgotComponent(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const Flexible(
                      flex: 3,
                      child: Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () => push(
                          context,
                          const NewSignUpScreen(), // change to HomeScreen
                        ),
                        child: const Text(
                          ' Sign Up',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

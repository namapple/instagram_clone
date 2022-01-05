import 'package:flutter/material.dart';
import 'package:instagram_login_screen/commons/common_class.dart';
import 'package:instagram_login_screen/screens/signup/new_signup.dart';
import 'package:instagram_login_screen/utils/utils.dart';

import '../../app_assets.dart';

class NewLoginScreen extends StatefulWidget {
  const NewLoginScreen({Key? key}) : super(key: key);

  @override
  _NewLoginScreenState createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> with Utils {
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
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                      child: CommonTextField(
                        hideText: true,
                        hintText: 'Password',
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }

                          if (value.length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }

                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: BuildButton(
                        textButton: 'Log In',
                        onPress: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  duration: Duration(seconds: 2),
                                  content: Text('Everything looks good')),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    forgotComponent(),
                  ],
                ),
                BuildBottomText(
                  questionText: 'Don\'t have an account?',
                  actionText: 'Sign Up',
                  onTap: () => push(
                    context,
                    const NewSignUpScreen(), // change to HomeScreen
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_login_screen/commons/common_class.dart';

class NewSignUpScreen extends StatefulWidget {
  const NewSignUpScreen({Key? key}) : super(key: key);

  @override
  State<NewSignUpScreen> createState() => _NewSignUpScreenState();
}

class _NewSignUpScreenState extends State<NewSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  String? _confirmPassword;
  String? _fullName;
  String? _userName;
  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: buildBackground(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add_a_photo_outlined),
                        color: Colors.white60,
                        iconSize: 100,
                        onPressed: () => pickImage(),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 20),
                          keyboardType: TextInputType.emailAddress,
                          decoration: buildInputDecoration("Email"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _email = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 20),
                          decoration: buildInputDecoration("Password"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
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
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 20),
                          decoration: buildInputDecoration("Confirm Password"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value != _password) {
                              return 'Confimation password does not match the entered';
                            }
                          },
                          onSaved: (value) {
                            _confirmPassword = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 20),
                          keyboardType: TextInputType.emailAddress,
                          decoration: buildInputDecoration("Fullname"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _fullName = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 20),
                          keyboardType: TextInputType.emailAddress,
                          decoration: buildInputDecoration("Username"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _userName = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          child: const Text(
                            'Sign Up',
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Flexible(
                        flex: 3,
                        child: Text(
                          'Already have an account',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            ' Log In',
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
      ),
    );
  }
}

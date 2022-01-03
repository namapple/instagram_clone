import 'package:flutter/material.dart';
import 'package:instagram_login_screen/screens/login/new_login.dart';

// - Background gradient -> reuse code
// - TextField -> reuse code
// - Image display from assets
// - Image Picker
// - Button -> reuse code
// - Row
// - Button Text -> navigation between Login & SignUp
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewLoginScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:instagram_login_screen/screens/bottom_nav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      // TODO(me): Make theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewBottomNav(),
    );
  }
}

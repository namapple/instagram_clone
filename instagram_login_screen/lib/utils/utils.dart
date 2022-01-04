import 'package:flutter/material.dart';

mixin Utils {
  Future<void> push(BuildContext context, Widget destination) async {
    Navigator.of(context).push<dynamic>(
      MaterialPageRoute<dynamic>(builder: (context) => destination),
    );
  }
}
import 'package:flutter/material.dart';

mixin Utils {
  Future<void> push(BuildContext context, Widget destination) async {
    await Navigator.of(context).push<dynamic>(
      MaterialPageRoute<dynamic>(builder: (context) => destination),
    );
  }
}

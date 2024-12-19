import 'package:flutter/material.dart';
import 'package:login/calaculator.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Calaculator(),
    ),
  ));
}




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:async';

void main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello'))),
    ),
  );
}

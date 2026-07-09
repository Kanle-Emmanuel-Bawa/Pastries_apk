import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'views/loginscreen.dart';
import 'views/onboardingscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      // LoginScreen(),
    ),
  );
}

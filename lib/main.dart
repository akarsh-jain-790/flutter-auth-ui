import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/sign_in.dart';
import 'package:flutter_ui/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SignIn(),
    ),
  );
}

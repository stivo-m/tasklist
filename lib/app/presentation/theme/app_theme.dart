// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith();
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith();
  }
}

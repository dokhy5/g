import 'package:flutter/material.dart';

class GColors {
  GColors._(); // Constructor private to prevent instantiation
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xffFFE24B);
  static const Color accent = Color(0xffB0C7FF);
  
  static const Gradient linerGradient= LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color(0xffff9a9a),
    Color(0xfffad0c4),
    Color(0xfffad0c4),

    ]);
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6C757D);
  static const Color textWhite = Color(0xffFFFFFF);

  static const Color light = Color(0xffF6F6F6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3F5FF);

  static const Color lightContainer = Color(0xffF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(.1);

  static const Color buttonPrimary = Color(0xff4B68FF);
  static const Color buttonSecondary = Color(0xff6C757D);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lighterGrey = Color(0xffF9f9f9);
  static const Color white = Color(0xffffffff);
}

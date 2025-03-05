import 'package:flutter/material.dart';
import 'package:g/utils/themes/custom_themes/appbar_themes.dart';
import 'package:g/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:g/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:g/utils/themes/custom_themes/chip_theme.dart';
import 'package:g/utils/themes/custom_themes/elevated_button_thems.dart';
import 'package:g/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:g/utils/themes/custom_themes/text_field_theme.dart';
import 'package:g/utils/themes/custom_themes/text_themes.dart';

class GAppThemes {
  GAppThemes._(); // Constructor private to prevent instantiation

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: GTextThemes.lightTextTheme,
        chipTheme: GChipTheme.lightChipTheme,
            scaffoldBackgroundColor: Colors.white,

    inputDecorationTheme: GTextFieldtheme.lightInputDecorationTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: GElevatedButtonThemes.lightElevatedButtonTheme,
    checkboxTheme: GCheckBoxTheme.lightCheckBoxTheme, 
    bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: GAppBarTheme.lightAppBarTheme,

  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: GTextThemes.darkTextTheme,
    chipTheme: GChipTheme.darkChipTheme,
    inputDecorationTheme: GTextFieldtheme.darkInputDecorationTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: GElevatedButtonThemes.darkElevatedButtonTheme,
    checkboxTheme: GCheckBoxTheme.darkCheckBoxTheme, 
    bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: GAppBarTheme.darkAppBarTheme,

  );
}

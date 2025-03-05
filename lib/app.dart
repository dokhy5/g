import 'package:flutter/material.dart';
import 'package:g/utils/themes/themes.dart';



class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: GAppThemes.lightTheme,
      darkTheme: GAppThemes.darkTheme,
      debugShowCheckedModeBanner: false,

    );
  }
}

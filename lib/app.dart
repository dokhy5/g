import 'package:flutter/material.dart';
import 'package:g/bindings/general_bindings.dart';
import 'package:g/features/authentication/screens/onboarding/onboarding.dart';
import 'package:g/routes/app_routes.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/themes/themes.dart';
import 'package:get/get.dart';



class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: GAppThemes.lightTheme,
      darkTheme: GAppThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.routes,
      home: const Scaffold(backgroundColor: GColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,),)),

    );
  }
}

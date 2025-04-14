import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:g/app.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/firebase_options.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized
  await GetStorage.init();

  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  ); // Initialize Flutter Native Splash

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); // Initialize Firebase

  Get.put(AuthenticationRepository()); // Initialize authentication repository

  runApp(const App());
}

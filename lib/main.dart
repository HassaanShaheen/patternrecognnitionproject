import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prproject/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_services/firebase_options.dart';



Future<void> main() async {
  //await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}


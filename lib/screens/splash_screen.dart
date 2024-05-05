import 'package:flutter/material.dart';
import 'package:prproject/firebase_services/valdiation.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Validation validation = Validation();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    validation.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("splash screen baad me dalein ge"),
        ),
      ),
    );
  }
}

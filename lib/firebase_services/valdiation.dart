import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prproject/screens/home-screen.dart';


class Validation{
  void islogin(BuildContext context){
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if(user != null){
      Timer(const Duration(seconds: 3), () {
        Get.to(() => HomeScreen());
      });

    }else{
      Timer(const Duration(seconds: 3), () {
        Get.to(() => HomeScreen());
      });
    }
  }

}
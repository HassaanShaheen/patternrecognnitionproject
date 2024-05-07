import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  // Observable to track authentication status
  RxBool isAuthenticated = false.obs;

  // Method to set user authentication status
  void setUserAuthenticated(bool isAuthenticated) {
    this.isAuthenticated.value = isAuthenticated;
  }

  // Method to retrieve the user's email
  Future<String?> getUserEmail() async {
    // Get the current user from Firebase Authentication
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // If the user is logged in, return the email
      return user.email;
    } else {
      // If the user is not logged in, return null
      return null;
    }
  }
}

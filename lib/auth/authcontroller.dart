
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isAuthenticated = false.obs;

  void setUserAuthenticated(bool isAuthenticated) {
    this.isAuthenticated.value = isAuthenticated;
  }
}

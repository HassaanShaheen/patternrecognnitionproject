import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prproject/auth/authcontroller.dart';
import 'package:prproject/auth/login.dart';
import 'package:prproject/auth/signup.dart';
import 'package:prproject/screens/setting.dart';
import 'package:prproject/textcontroller.dart';


class HomeScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    final TextController controller = Get.put(TextController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Font Frame',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 137, 176),
      ),
      drawer: Obx(() => Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 137, 176),
                    ),
                    child: Text(
                      'Sidebar Header',
                      style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 247),
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Card( // Moved the settings card here
                  color: const Color.fromARGB(255, 39, 137, 176),
                  child: ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(() => const SettingScreen());
                    },
                    splashColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
                if (!authController.isAuthenticated.value)
                  Card(
                    color: const Color.fromARGB(255, 39, 137, 176),
                    child: ListTile(
                      leading: const Icon(Icons.person_add),
                      title: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Get.to(() => const SignUpScreen());
                      },
                      splashColor: const Color.fromARGB(255, 148, 140, 140)
                          .withOpacity(1),
                    ),
                  ),
                if (!authController.isAuthenticated.value)
                  Card(
                    color: const Color.fromARGB(255, 39, 137, 176),
                    child: ListTile(
                      leading: const Icon(Icons.login),
                      title: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Get.to(() => const LogInScreen());
                      },
                      splashColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                if (authController.isAuthenticated.value)
                  Card(
                    color: const Color.fromARGB(255, 39, 137, 176),
                    child: ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Implement logout functionality
                        authController.setUserAuthenticated(false);
                      },
                      splashColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
              ],
            ),
          ],
        ),
      )),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GetBuilder<TextController>(
                builder: (_) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: TextFormField(
                    controller: controller.textController,
                    textAlign: TextAlign.center,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Enter Your Prompt",
                      labelText: 'Prompt',
                      border: InputBorder.none,
                      suffixIcon: Material(
                        shape: const CircleBorder(),
                        color: const Color.fromARGB(255, 39, 137, 176),
                        child: InkWell(
                          onTap: () {
                            // Perform action on icon tap
                          },
                          borderRadius: BorderRadius.circular(5.0),
                          splashColor: Colors.grey.withOpacity(0.5),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

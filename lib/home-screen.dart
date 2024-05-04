import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prproject/login.dart';
import 'package:prproject/setting.dart';
import 'package:prproject/signup.dart';
import 'package:prproject/textcontroller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

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
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
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
            Container(
              color: const Color.fromARGB(255, 39, 137, 176),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(
                        () =>SettingScreen()
                      );
                    },
                     splashColor: Colors.grey.withOpacity(0.5),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_add),
                    title: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(
                     () => const SignUpScreen()   
                      );
                    },
                     splashColor: const Color.fromARGB(255, 148, 140, 140).withOpacity(1),
                  ),
                  ListTile(
                    leading: const Icon(Icons.login),
                    title: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                     Get.to(
                      () => const LogInScreen()
                     );
                    },
                     splashColor: Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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

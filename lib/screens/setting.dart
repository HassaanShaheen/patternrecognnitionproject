import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: const Color.fromARGB(255, 39, 137, 176),
          ),
          body: Container(
            child: Card(
              child: ListTile(
                title: Text('Themes'),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration:

                        BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light'),
                          onTap: () {
                            Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark'),
                          onTap: () {
                            Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                          },
                        ),
                      ],
                    ),
                  ));
                },
              ),
            ),
          )),
    );
  }
}

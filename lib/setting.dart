import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingScreen extends StatelessWidget {

   SettingScreen({super.key});

  final appdata =GetStorage();

  @override
  Widget build(BuildContext context) {

    appdata.writeIfNull('darkmode', false);

    return SimpleBuilder(
      builder: (_)
     {
         bool isDarkMode = appdata.read('darkmode');
        return GetMaterialApp(
          theme: isDarkMode ? ThemeData.dark(): ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Settings',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 39, 137, 176),
          ),
          body: Column(
            children: [
             Switch(
                value: isDarkMode,
                onChanged: (value) => appdata.write('darkmode', value),
              ),
           ],
          ),
        ),
        );
      }
    );
  }
}

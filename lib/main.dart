import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locthemeapp/translation.dart';
import 'theme_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Localization & Theme App',
          translations: AppTranslations(),
          locale: Locale('en', 'US'), // Default locale
          fallbackLocale: Locale('en', 'US'),
          themeMode: themeController.theme,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: HomeScreen(),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              _changeLanguageDialog();
            },
          ),
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('hello'.tr),
      ),
    );
  }

  void _changeLanguageDialog() {
    Get.defaultDialog(
      title: 'change_language'.tr,
      content: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('en', 'US'));
              Get.back();
            },
            child: Text('English'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('es', 'ES'));
              Get.back();
            },
            child: Text('Español'),
          ),
        ],
      ),
    );
  }
}

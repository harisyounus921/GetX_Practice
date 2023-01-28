import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/Translations/TranslationsScreen.dart';
import 'package:getx_example/home/homeScreen.dart';
import 'package:getx_example/model/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo',
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.deepPurple,
      ),
      home: const homeScreen(),
      getPages: [
        GetPage(name: '/', page:()=> const homeScreen()),
        GetPage(name: '/screenOne', page: ()=>translationsScreen())
      ],
    );
  }
}

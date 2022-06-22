import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniscore/languages.dart';
import 'package:uniscore/views/calculator.dart';
import 'package:uniscore/views/home.dart';

void main() {
  runApp(GetMaterialApp(
    translations: Languages(),
    locale: Get.deviceLocale,
    fallbackLocale: const Locale('fr', 'FR'),
    theme: ThemeData(
      useMaterial3: false,
    ),
    title: 'Uniscore',
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: () => const HomePage()),
      GetPage(name: '/info', page: () => const CalculatorPage()),
      GetPage(name: '/info-old', page: () => const CalculatorPage()),
      GetPage(name: '/tech', page: () => const CalculatorPage()),
      GetPage(name: '/ecogest', page: () => const CalculatorPage()),
      GetPage(name: '/science', page: () => const CalculatorPage()),
      GetPage(name: '/math', page: () => const CalculatorPage()),
      GetPage(name: '/lettres', page: () => const CalculatorPage()),
      GetPage(name: '/sport', page: () => const CalculatorPage()),
    ],
  ));
}

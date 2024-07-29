import 'package:baca_komik_berbasis_android/pages/home_page.dart';
import 'package:baca_komik_berbasis_android/pages/kategori_page.dart';
import 'package:baca_komik_berbasis_android/pages/login.dart';
import 'package:baca_komik_berbasis_android/pages/main_page.dart';
import 'package:baca_komik_berbasis_android/pages/profil_page.dart';
import 'package:baca_komik_berbasis_android/pages/regist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

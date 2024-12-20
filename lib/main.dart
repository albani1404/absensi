
import 'package:absen/home.dart';
import 'package:absen/login.dart';
import 'package:absen/splashscreen.dart';
import 'package:flutter/material.dart';
//import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Definisikan rute-rute aplikasi Anda di sini.
      //home: const HomePages(),
      routes: {
        '/': (context) => SplashScreen(), // Rute splash screen
        '/login': (context) =>
            LoginScreen(), // Rute halaman berikutnya setelah splash screen
        '/home': (context) => const HomePages(), // rute halaman setelah login
      },
    );
  }
}

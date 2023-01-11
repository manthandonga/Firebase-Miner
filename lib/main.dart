import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app_using_firbase/views/screens/Login_page.dart';
import 'package:login_app_using_firbase/views/screens/Regisster_Page.dart';
import 'package:login_app_using_firbase/views/screens/Splesh_Screen.dart';
import 'package:login_app_using_firbase/views/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "SpalshScreen_Page",
      routes: {
        "Login_Page": (context) => const Login_Page(),
        "Ragister_Page": (context) => const Ragister_Page(),
        "/": (context) => const Home_Page(),
        "SpalshScreen_Page": (context) => const SpalshScreen(),
      },
    ),
  );
}

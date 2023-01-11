import 'package:flutter/material.dart';
import 'package:login_app_using_firbase/helper/Login_helper.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PNFT Market"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await RagisterHelper.ragisterHelper.signOutUser();

              Navigator.of(context)
                  .pushNamedAndRemoveUntil("Login_Page", (route) => false);
            },
          ),
        ],
      ),
    );
  }
}

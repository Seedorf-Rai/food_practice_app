import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.off(() => const HomeView());
              },
              child: const Text("Home Page"))),
    );
  }
}

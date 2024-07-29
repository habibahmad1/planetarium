import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planetarium'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: Obx(() => controller.pages[controller.indexNavbar.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.indexNavbar.value,
          backgroundColor: Colors.blue[900],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            controller.indexNavbar.value = value;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

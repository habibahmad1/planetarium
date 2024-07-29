import 'package:get/get.dart';

class SettingsController extends GetxController {
  // Mendefinisikan state mode gelap
  var isDarkMode = false.obs;

  // Metode untuk toggle mode gelap
  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
  }
}

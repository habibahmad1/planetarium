import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:project_flutter/app/modules/home/views/book.dart';
import 'package:project_flutter/app/modules/settings/views/settings_view.dart';

// class HomeController extends GetxController
//     with GetSingleTickerProviderStateMixin {
//   late AnimationController myAnimated =
//       AnimationController(vsync: this, duration: Duration(seconds: 2))
//         ..repeat(reverse: true);
// }

class HomeController extends GetxController {
  RxInt indexNavbar = 0.obs;
  List pages = [
    Book(),
    SettingsView(),
  ];

  void changePage(int index) {
    indexNavbar.value = index;
  }
}

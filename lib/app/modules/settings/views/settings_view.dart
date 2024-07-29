import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Logout"),
          content: Text("Keluar dari aplikasi?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                SystemNavigator.pop();
              },
              child: Text("Logout"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> info = [
      "My Profil",
      "About App",
      "Logout",
    ];
    List<IconData> icons = [
      Icons.person,
      Icons.phone_android,
      Icons.logout,
    ];
    List<VoidCallback> aksi = [
      () => Get.snackbar(
            "System",
            "Dalam Pengembangan",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.blue[600],
            colorText: Colors.white,
          ),
      () => Get.defaultDialog(
            title: "About App",
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Aplikasi Planetarium ini dibuat untuk tujuan menambah pengetahuan tentang Tata Surya Planet, Jika memiliki masalah/saran bisa hubungi saya lewat email dibawah ini habib@habibahmad.my.id'),
                SizedBox(height: 20),
                Text('Version: 1.0.0'),
              ],
            ),
            textConfirm: "OK",
            onConfirm: () {
              Get.back(); // Tutup dialog
            },
          ),
      () => _confirmLogout(context),
    ];
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: info.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(icons[index]),
        title: Text("${info[index]}"),
        onTap: aksi[index],
      ),
    );
  }
}

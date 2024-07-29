import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/app/modules/home/pages/planet/detailPlanet.dart';

void main() {
  runApp(Bintang());
}

class Bintang extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'bintang kerdil merah',
      'content':
          'Bintang kerdil merah adalah jenis bintang yang paling umum di galaksi kita, galaksi Bima Sakti. Mereka memiliki massa yang jauh lebih kecil dibandingkan dengan Matahari, biasanya sekitar 0,08 hingga 0,6 kali massa Matahari. Suhu permukaan bintang kerdil merah relatif rendah, berkisar antara 2.500 hingga 4.000 derajat Celsius, jauh lebih rendah dibandingkan dengan suhu permukaan Matahari yang sekitar 5.500 derajat Celsius. Karena suhu permukaan yang rendah, bintang kerdil merah memancarkan cahaya yang lebih banyak dalam spektrum merah hingga inframerah, itulah sebabnya mereka disebut "kerdil merah".',
    },
    {
      'title': 'bintang kerdil putih',
      'content':
          'Bintang kerdil putih adalah tahap akhir dari evolusi bintang untuk bintang dengan massa rendah hingga menengah, termasuk bintang seperti Matahari kita. Setelah bintang seperti Matahari menghabiskan bahan bakar nuklirnya, mereka akan melewati fase raksasa merah sebelum akhirnya kehilangan lapisan luarnya dan meninggalkan inti panas yang tersisa, yang menjadi bintang kerdil putih.'
    },
    {
      'title': 'bintang neutron',
      'content':
          'Bintang neutron adalah salah satu objek paling padat dan eksotis di alam semesta. Mereka terbentuk dari sisa-sisa bintang besar yang telah meledak dalam supernova setelah kehabisan bahan bakar nuklirnya. Bintang neutron terbentuk ketika sebuah bintang dengan massa setidaknya 8 hingga 20 kali massa Matahari kehabisan bahan bakar untuk melakukan fusi nuklir di intinya. Tanpa tekanan radiasi dari fusi untuk menahan gravitasi, inti bintang runtuh dengan sangat cepat. Proses ini memadatkan proton dan elektron bersama-sama menjadi neutron, menghasilkan objek yang sangat padat: bintang neutron. Ledakan luar dari bintang yang runtuh disebut supernova, dan ini menyebarkan sisa material bintang ke ruang angkasa.'
    },
    {
      'title': 'bintang pulsar',
      'content':
          'Bintang pulsar terbentuk dari sisa-sisa bintang besar yang meledak dalam supernova. Ketika sebuah bintang yang memiliki massa antara 8 hingga 20 kali massa Matahari kehabisan bahan bakar nuklirnya, intinya runtuh dengan sangat cepat. Proses ini menciptakan bintang neutron yang sangat padat dan berputar cepat. Jika medan magnetnya cukup kuat dan poros rotasinya miring terhadap sumbu magnetiknya, bintang neutron ini dapat menjadi pulsar.'
    },
    {
      'title': 'bintang magnetar',
      'content':
          'Magnetar adalah jenis bintang neutron yang memiliki medan magnet luar biasa kuat, jauh lebih kuat daripada bintang neutron biasa atau bahkan pulsar. Magnetar adalah salah satu objek paling eksotis dan ekstrem di alam semesta. Magnetar terbentuk seperti bintang neutron lainnya, yaitu dari sisa-sisa bintang masif yang meledak dalam supernova. Ketika sebuah bintang dengan massa lebih dari sekitar 8 hingga 20 kali massa Matahari kehabisan bahan bakar nuklirnya, intinya runtuh menjadi bintang neutron yang sangat padat. Dalam kasus magnetar, kondisi tertentu selama proses ini menghasilkan medan magnet yang sangat kuat.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bintang"),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => DetailPage(
                    title: cards[index]['title']!,
                    content: cards[index]['content']!,
                  ));
            },
            child: Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/img/${cards[index]['title']}.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  cards[index]['title']!.toUpperCase(),
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/app/modules/home/pages/planet/detailPlanet.dart';

void main() {
  runApp(Cuaca());
}

class Cuaca extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'cuaca cerah',
      'content':
          'Langit sepenuhnya atau sebagian besar bebas dari awan, memungkinkan sinar matahari terang menyinari permukaan Bumi. Biasanya disertai dengan suhu yang relatif nyaman.',
    },
    {
      'title': 'cuaca berawan',
      'content':
          'Langit tertutup oleh awan, yang bisa sebagian atau seluruhnya menutupi matahari. Awan dapat bervariasi dalam jenis dan ketinggian, mempengaruhi jumlah cahaya matahari yang mencapai permukaan.'
    },
    {
      'title': 'cuaca mendung',
      'content':
          'Langit sepenuhnya tertutup oleh awan tebal, sering kali menyebabkan kegelapan dan mengurangi visibilitas. Biasanya menjadi tanda akan terjadinya hujan atau cuaca buruk.'
    },
    {
      'title': 'cuaca hujan',
      'content':
          'Terjadi ketika tetesan air dari awan turun ke permukaan Bumi. Intensitasnya bisa bervariasi dari hujan ringan hingga hujan deras. Hujan membantu mengisi sumber air seperti sungai dan danau.'
    },
    {
      'title': 'cuaca gerimis',
      'content':
          'Hujan ringan dengan tetesan air yang sangat kecil dan halus, sering kali tidak menyebabkan genangan air dan biasanya hanya sedikit basah.'
    },
    {
      'title': 'cuaca hujan badai',
      'content':
          'Mengacu pada hujan yang sangat deras yang disertai dengan badai. Ini bisa mencakup petir (kilat) dan guntur (suara gemuruh), angin kencang, dan kadang-kadang hujan es atau salju.'
    },
    {
      'title': 'cuaca salju',
      'content':
          'Kristal es yang jatuh dari awan dan membentuk lapisan salju di permukaan. Salju biasanya terjadi di suhu di bawah titik beku (0°C atau 32°F) dan dapat bervariasi dari flurry ringan hingga badai salju berat.'
    },
    {
      'title': 'cuaca hujan es',
      'content':
          'Hujan yang jatuh dalam bentuk gumpalan es atau bola es kecil. Ini sering terjadi ketika tetesan hujan melewati lapisan udara dingin sebelum mencapai permukaan, menyebabkan es terbentuk.'
    },
    {
      'title': 'cuaca kabut',
      'content':
          'Awan yang sangat rendah dan tebal yang menyentuh permukaan tanah, mengurangi jarak pandang secara signifikan dan sering kali membuat lingkungan tampak berkabut.'
    },
    {
      'title': 'cuaca angin',
      'content':
          'Kondisi atmosfer di mana angin berhembus, bervariasi dari angin sepoi-sepoi hingga angin kencang. Kecepatan angin bisa mempengaruhi suhu udara secara keseluruhan dan dapat menyebabkan kondisi cuaca lain seperti angin topan.'
    },
    {
      'title': 'cuaca badai tropis dan siklon',
      'content':
          'Sistem badai besar yang terjadi di wilayah tropis dengan angin sangat kencang, hujan deras, dan tekanan rendah. Ini termasuk hurikan (hurricane) di Atlantik, topan (typhoon) di Pasifik, dan siklon (cyclone) di Samudra Hindia.'
    },
    {
      'title': 'cuaca guntur dan petir',
      'content':
          'Fenomena meteorologi yang melibatkan kilatan cahaya (petir) dan suara gemuruh (guntur) yang sering terjadi bersamaan dengan badai. Petir adalah pelepasan energi listrik di atmosfer, sedangkan guntur adalah suara yang dihasilkan oleh petir.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuaca"),
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
                  textAlign: TextAlign.center,
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

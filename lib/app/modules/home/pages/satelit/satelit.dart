import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/app/modules/home/pages/planet/detailPlanet.dart';

void main() {
  runApp(Satelit());
}

class Satelit extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'sputnik 1',
      'content':
          'Diluncurkan oleh Uni Soviet pada tahun 1957, Sputnik 1 adalah satelit buatan pertama yang mengorbit Bumi, menandai awal dari era eksplorasi luar angkasa.',
    },
    {
      'title': 'explorer 1',
      'content':
          'Diluncurkan oleh Amerika Serikat pada tahun 1958, Explorer 1 adalah satelit pertama AS dan berkontribusi pada penemuan sabuk radiasi Van Allen di sekitar Bumi.'
    },
    {
      'title': 'hubble space telescope',
      'content':
          'Diluncurkan oleh NASA dan ESA pada tahun 1990, teleskop luar angkasa ini telah memberikan gambar menakjubkan dari alam semesta dan membantu dalam banyak penemuan astronomi penting.'
    },
    {
      'title': 'voyager 1',
      'content':
          'Diluncurkan oleh NASA pada tahun 1977, Voyager 1 adalah satelit yang saat ini berada di ruang antarbintang setelah melampaui batas tata surya kita, mengirimkan data tentang lingkungan luar angkasa.'
    },
    {
      'title': 'galileo',
      'content':
          'Konstelasi satelit navigasi Eropa yang diluncurkan oleh ESA, menyediakan layanan penentuan posisi global dengan presisi tinggi.'
    },
    {
      'title': 'chandrayaan-2',
      'content':
          'Misi eksplorasi bulan oleh ISRO (India), diluncurkan pada tahun 2019, mencakup orbiter, pendarat, dan penjelajah untuk mempelajari permukaan bulan.'
    },
    {
      'title': 'tianhe',
      'content':
          'Modul inti dari stasiun luar angkasa Tiangong yang diluncurkan oleh CNSA (China) pada tahun 2021, dirancang sebagai bagian dari stasiun luar angkasa modular.'
    },
    {
      'title': 'sentinel-1',
      'content':
          'Satelit pengamatan bumi yang merupakan bagian dari program Copernicus oleh ESA, digunakan untuk pemantauan lingkungan, bencana alam, dan keamanan.'
    },
    {
      'title': 'insat-3d',
      'content':
          'Satelit cuaca India yang diluncurkan oleh ISRO pada tahun 2013, digunakan untuk pemantauan cuaca, prediksi, dan komunikasi.'
    },
    {
      'title': 'aqua',
      'content':
          'Satelit pengamatan bumi yang diluncurkan oleh NASA pada tahun 2002, fokus pada siklus air global, termasuk penguapan, curah hujan, dan kelembaban tanah.'
    },
    {
      'title': 'landsat 8',
      'content':
          'Satelit yang diluncurkan oleh NASA dan USGS pada tahun 2013 sebagai bagian dari program Landsat, menyediakan data untuk pemantauan sumber daya bumi.'
    },
    {
      'title': 'global positioning system ',
      'content':
          'Konstelasi satelit yang dikelola oleh Departemen Pertahanan AS, menyediakan layanan penentuan posisi global untuk navigasi sipil dan militer.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Satelit"),
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

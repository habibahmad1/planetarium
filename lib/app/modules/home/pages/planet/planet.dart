import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/app/modules/home/pages/planet/detailPlanet.dart';

void main() {
  runApp(GetMaterialApp(home: PlanetMenu()));
}

class PlanetMenu extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'merkurius',
      'content':
          'Merkurius adalah planet terkecil dan terdekat dengan Matahari. Ia memiliki permukaan yang penuh dengan kawah, mirip dengan Bulan. Suhu di Merkurius sangat ekstrem, mencapai 430°C di siang hari dan turun hingga -180°C di malam hari. Planet ini tidak memiliki atmosfer yang signifikan, yang menyebabkan perubahan suhu yang drastis. Merkurius berotasi sangat lambat, membutuhkan 59 hari Bumi untuk satu putaran, sementara revolusinya hanya memakan waktu 88 hari Bumi.',
    },
    {
      'title': 'venus',
      'content':
          'Venus sering disebut sebagai kembaran Bumi karena ukurannya yang hampir sama. Namun, atmosfer Venus sangat tebal dan terdiri dari 96.5% karbon dioksida, dengan awan asam sulfat yang menciptakan efek rumah kaca ekstrem, menghasilkan suhu rata-rata sekitar 467°C. Permukaannya vulkanik, dengan banyak gunung berapi dan dataran lava. Venus berotasi sangat lambat dan dalam arah retrograd, membutuhkan 243 hari Bumi untuk satu putaran, sementara revolusinya adalah 225 hari Bumi.'
    },
    {
      'title': 'bumi',
      'content':
          'Bumi adalah satu-satunya planet yang diketahui mendukung kehidupan. Ini memiliki atmosfer yang kaya akan oksigen dan nitrogen, serta ekosistem yang sangat beragam. Permukaannya terdiri dari 71% air dan 29% daratan, dengan berbagai bentuk lahan seperti pegunungan, lembah, dan dataran. Rotasi Bumi membutuhkan 24 jam, sementara revolusinya adalah 365.25 hari. Bumi memiliki medan magnet yang kuat dan atmosfer pelindung yang memungkinkannya mendukung kehidupan.'
    },
    {
      'title': 'mars',
      'content':
          'Mars, dikenal sebagai "Planet Merah", memiliki permukaan yang berwarna kemerahan akibat oksida besi. Mars memiliki gunung berapi besar, lembah yang luas, dan tanda-tanda adanya air di masa lalu. Atmosfernya sangat tipis, terdiri dari 95% karbon dioksida, dan suhunya sangat dingin, rata-rata sekitar -60°C. Mars berotasi dalam waktu 24.6 jam dan membutuhkan 687 hari Bumi untuk menyelesaikan satu revolusi. Planet ini menjadi target utama dalam pencarian kehidupan di luar Bumi.'
    },
    {
      'title': 'jupiter',
      'content':
          'Jupiter adalah planet terbesar di tata surya, dikenal dengan Bintik Merah Besar, sebuah badai raksasa yang telah berlangsung selama berabad-abad. Tidak memiliki permukaan padat, Jupiter terdiri dari lautan hidrogen metalik di bawah atmosfer tebal yang terdiri dari 90% hidrogen dan 10% helium. Rotasi Jupiter sangat cepat, hanya 10 jam, sementara revolusinya adalah 12 tahun Bumi. Jupiter memiliki lebih dari 79 bulan, termasuk Ganymede, bulan terbesar di tata surya. Cincin tipis dan badai besar merupakan karakteristik utama Jupiter.'
    },
    {
      'title': 'saturnus',
      'content':
          'Saturnus adalah planet terbesar kedua di tata surya dan terkenal dengan sistem cincinnya yang indah dan kompleks, terdiri dari es dan partikel debu. Saturnus tidak memiliki permukaan padat, terdiri dari lautan hidrogen dan helium di bawah atmosfer. Rotasi Saturnus cepat, hanya 10.7 jam, sedangkan revolusinya adalah 29.5 tahun Bumi. Atmosfernya terdiri dari 96% hidrogen dan 3% helium. Saturnus memiliki lebih dari 80 bulan, termasuk Titan, bulan terbesar kedua di tata surya. Cincin-cincinnya yang luas dan kompleks adalah fitur yang paling menonjol.'
    },
    {
      'title': 'uranus',
      'content':
          'Uranus adalah planet ketujuh dari Matahari dan unik karena rotasinya hampir pada sisinya, menyebabkan musim yang ekstrem dan panjang. Atmosfer Uranus terdiri dari 83% hidrogen, 15% helium, dan 2% metana, memberikan warna biru kehijauan. Uranus tidak memiliki permukaan padat, terdiri dari es dan cairan, dengan inti berbatu. Rotasi Uranus membutuhkan sekitar 17.2 jam, sedangkan revolusinya adalah 84 tahun Bumi. Uranus memiliki 27 bulan yang diketahui dan cincin yang tipis serta gelap.'
    },
    {
      'title': 'neptunus',
      'content':
          'Neptunus adalah planet terjauh dari Matahari, dikenal karena anginnya yang sangat kencang dan badai besar seperti Bintik Gelap Besar. Atmosfer Neptunus terdiri dari 80% hidrogen, 19% helium, dan 1% metana, memberikan warna biru yang dalam. Neptunus tidak memiliki permukaan padat, terdiri dari es dan cairan, dengan inti berbatu. Rotasi Neptunus membutuhkan sekitar 16.1 jam, sedangkan revolusinya adalah 165 tahun Bumi. Neptunus memiliki 14 bulan yang diketahui, termasuk Triton yang memiliki aktivitas geologi, serta badai besar dan angin tercepat di tata surya, mencapai 2,100 km/jam.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planet"),
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

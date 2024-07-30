import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_flutter/app/modules/home/pages/bintang/bintang.dart';
import 'package:project_flutter/app/modules/home/pages/cuaca/cuaca.dart';
import 'package:project_flutter/app/modules/home/pages/planet/planet.dart';
import 'package:project_flutter/app/modules/home/pages/satelit/satelit.dart';
import '../widget/widget.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallCard(
                  teksCard: "Planet",
                  aksi: () {
                    Get.to(() => PlanetMenu());
                  }),
              SmallCard(
                  teksCard: "Bintang",
                  aksi: () {
                    Get.to(() => Bintang());
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallCard(
                  teksCard: "Satelit",
                  aksi: () {
                    Get.to(() => Satelit());
                  }),
              SmallCard(
                  teksCard: "Cuaca",
                  aksi: () {
                    Get.to(() => Cuaca());
                  }),
            ],
          ),
          SizedBox(height: 20),
          TextMore(TeksMore: "Cover"),
          CardLarge(),
          SizedBox(height: 30),
          TextMore(TeksMore: "Kamu Mungkin Juga Suka"),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BookWidget(teksBook: "Naruto Shippuden", imgBook: "naruto"),
                BookWidget(teksBook: "Detektif Conan", imgBook: "conan"),
                BookWidget(
                    teksBook: "Doraemon Nobita no Kyouryuu",
                    imgBook: "doraemon"),
                BookWidget(teksBook: "Ninja Hatori", imgBook: "hatori"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

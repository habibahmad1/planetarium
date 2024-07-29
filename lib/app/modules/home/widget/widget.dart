import 'package:flutter/material.dart';

// SmallCard
class SmallCard extends StatelessWidget {
  final String teksCard;
  final VoidCallback? aksi;

  const SmallCard({super.key, required this.teksCard, required this.aksi});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aksi,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        child: Container(
          width: 170,
          height: 60,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              teksCard,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("assets/img/$teksCard.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

// CardLarge
class CardLarge extends StatelessWidget {
  const CardLarge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            elevation: 3,
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage("assets/img/Planet.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            elevation: 3,
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage("assets/img/Bintang.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// BookWidget
class BookWidget extends StatelessWidget {
  final String teksBook;
  final String imgBook;
  const BookWidget({super.key, required this.teksBook, required this.imgBook});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 260,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage("assets/img/$imgBook.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    teksBook,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// TextMore
class TextMore extends StatelessWidget {
  final String TeksMore;
  const TextMore({super.key, required this.TeksMore});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          TeksMore,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

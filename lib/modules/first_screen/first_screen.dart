import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider(
                items: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.00),
                      child: Image.asset(
                        'assets/images/Anater.webp',
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.00),
                      child: Image.asset(
                        'assets/images/Anater.webp',
                        fit: BoxFit.cover,
                      )),
                ],
                options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1.00,
                    initialPage: 0,
                    scrollPhysics: BouncingScrollPhysics(),
                    enableInfiniteScroll: false,
                    reverse: true,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 1),
                    clipBehavior: Clip.hardEdge))
          ],
        ),
      ),
    );
  }
}

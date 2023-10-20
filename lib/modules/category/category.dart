import 'package:maak/modules/category/category.dart';
import 'package:maak/modules/place/place.dart';
import 'package:maak/shared/components/Components.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 5.00),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, int) {
            return categoryItem(
                context: context,
                categoryTitle: 'Food and restaurants',
                categoryDescription: 'Majority of food and restaurants',
                image: 'assets/images/restaurant.png',
                inkOnTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlaceScreen(
                                categoryTitle: 'Food and restaurants',
                              )));
                });
          },
          separatorBuilder: (context, int) => Container(
                color: Colors.grey,
                child: SizedBox(
                  height: 1.00,
                  width: double.infinity,
                ),
              ),
          itemCount: 20),
    ));
  }
}

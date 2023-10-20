import 'package:maak/shared/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaceScreen extends StatelessWidget {
  final String categoryTitle;
  PlaceScreen({required this.categoryTitle}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, int) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.00, vertical: 5.00),
              child: Card(
                elevation: 0,
                clipBehavior: Clip.hardEdge,
                color: Theme.of(context).colorScheme.surface,
                child: Container(
                  width: double.infinity,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8.00,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'A place',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.00),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'This ia a place where you can have some food and eat and slepp and have fun please keep calm in order to have fun',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.00),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3.00,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      makingPhoneCall(phone: '01121568089');
                                    },
                                    icon: Icon(
                                      Icons.call,
                                      size: 20.00,
                                    ),
                                  ),
                                  Text('201121568089'),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      goToLocation(
                                          latitude: 29.977517728860235,
                                          longitude: 31.40844911639355);
                                    },
                                    icon: Icon(
                                      Icons.location_on,
                                      size: 20.00,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      sendWhatsAppMessage(
                                          phone: '201150545014');
                                    },
                                    icon: Icon(
                                      Icons.mobile_friendly,
                                      size: 20.00,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          height: 100.00,
                          child: Image.asset(
                            'assets/images/Anater.webp',
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, int) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.00),
                child: Container(
                  color: Colors.grey,
                  height: 1.00,
                  width: double.infinity,
                ),
              ),
          itemCount: 10),
    );
  }
}

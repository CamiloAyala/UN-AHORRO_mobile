// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class Carousel extends StatefulWidget{
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int currentIndex = 0;

  List cardList = [
    CardImage,
    CardImage,
    CardImage,
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return const CardImage();
          },
          options: CarouselOptions(
            height: 145,
            autoPlay: false,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            pauseAutoPlayOnTouch: true,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) => setState(() => currentIndex = index),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: currentIndex == index ? 10.0 : 8.0,
                height: currentIndex == index ? 10.0 : 8.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index ? colors.primary : Colors.grey,
                ),
              );
              }
        ),
        )
      ],
    );
  }
  
}

class CardImage extends StatelessWidget{
  const CardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.9,
      height: 120,
      decoration: BoxDecoration(
        color: colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '30 Nov 2022',
                  style: TextStyle(
                    color: colors.warning,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(
                  width: 150,
                  child: Text(
                    'Taller de finanzas personales',
                    style: TextStyle(
                      color: colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  const [
                Image(image: AssetImage('images/unal.png'), width: 90)
              ],
            ),
            

          ],
        ),
      )
    );
  }
  
}

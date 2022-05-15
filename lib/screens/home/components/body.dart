import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/screens/details/details_screen.dart';
import 'package:ui/screens/home/components/photo_and_title.dart';
import 'package:ui/screens/home/components/title_and_flatButton.dart';
import 'featured_plant_card.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          headerwithsearchbox(size: size),
          titlewithbtn(
            press: () {},
            title: 'Recomended',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                recomendedplantcardphoto(
                    image: 'assets/images/image_2.png',
                    title: 'samantha',
                    country: 'russia',
                    price: 440,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ));
                    }),
                recomendedplantcardphoto(
                    image: 'assets/images/image_3.png',
                    title: 'angelica',
                    country: 'russia',
                    price: 540,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ));
                    }),
                recomendedplantcardphoto(
                    image: 'assets/images/image_1.png',
                    title: 'faziata',
                    country: 'russia',
                    price: 640,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ));
                    }),
              ],
            ),
          ),
          titlewithbtn(press: () {}, title: 'Featured Plants'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                featureplantcard(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {},
                ),
                featureplantcard(
                    image: 'assets/images/bottom_img_2.png', press: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

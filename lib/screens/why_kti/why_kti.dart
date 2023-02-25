import 'package:brain_school/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WhyKti extends StatefulWidget {
  static String routeName = 'WhyKti';

  @override
  WhyKtiState createState() => WhyKtiState();
}

class WhyKtiState extends State<WhyKti> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Video Gallery',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            elevation: 0,
          ),
        ),

      ),

      body: Column(
          children: <Widget>[
            CarouselSlider(
              items: child,
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            ElevatedButton(
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
              child: Text('→'),
            )
          ]
      ),

    );
    // // TODO: implement build
    // throw UnimplementedError();
  }
}

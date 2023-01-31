import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brain_school/components/custom_buttons.dart';
import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/home_screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatefulWidget {
  static String routeName = 'About_Us';

  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    // super.initState();
    //   _ = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        // Overide the default Back button
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        title: Text(
          'ABOUT US',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.blue.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/kti_image.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'The Technical Institute of Kurdistan, established on 19/10/2015 by the ministerial decree No. 21923, wants to take part in this historical and national responsibility. '
                        'A leading institute, although the Kurdistan Technical Institute was established in a very timely manner, meant it was a necessity for the stage, as Kurdistan’s students needed '
                        'a modern institute with a modern program.In this way, the Institute insists on '
                        'implementing a protocol of scientific and cultural understanding with universities and institutes inside and outside the region and around the world, and has so far signed agreements'
                        ' with several universities and institutes. All of this, the Kurdistan Technical Institute believes that the students are the'
                        ' center of the learning process, so it insists on providing the students with the ability to provide new equipment and technology for the students of the institute according to the stage'
                        ' and the era. To provide and develop the skills and science of students, in a way that leads to the development of science and technology in the region, so that it can serve the homeland from here '
                        'and achieve the desires of the nation.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/kti_dean.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Kurdistan is the second home of humanity and the source of human development in the world, and this homeland has had a prophet and many golden histories and talented and inventive personalities. In Kurdistan, Sulaimaniyah is the home of revolution, struggle, and the capital of culture, the cultural and political movement that has proved its history and has given it these characteristics and nicknames. From this point of view, the Technical Institute of Kurdistan, established on 19/10/2015 by the ministerial decree No. 21923, wants to take part in this historical and national responsibility. A leading institute, although the Kurdistan Technical Institute was established in a very timely manner, meant it was a necessity for the stage, as Kurdistan’s students needed a modern institute with a modern program. In this way, the Institute insists on implementing a protocol of scientific and cultural understanding with universities and institutes inside and outside the region and around the world, and has so far signed agreements with several universities and institutes. All of this, the Kurdistan Technical Institute believes that the students are the center of the learning process, so it insists on providing the students with the ability to provide new equipment and technology for the students of the institute according to the stage and the era. To provide and develop the skills and science of students, in a way that leads to the development of science and technology in the region, so that it can serve the homeland from here and achieve the desires of the nation.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/kti_dean.png',
                fit: BoxFit.cover,
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}

// }

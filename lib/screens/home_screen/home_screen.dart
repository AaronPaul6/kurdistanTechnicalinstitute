import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/Timetable/Timetable.dart';
import 'package:brain_school/screens/gallery_photo/gallery_photo.dart';
import 'package:brain_school/screens/gallery_video/gallery_video.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../news_screen/news.dart';
import 'widgets/student_data.dart';
import 'package:brain_school/screens/Q&A//Q&A.dart';
import 'package:brain_school/screens/about_us/about_us.dart';
import 'package:brain_school/screens/Contactus/contact.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StudentName(
                          studentName: 'WELCOME TO KTI',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StoryEffect(
                          color: Colors.orangeAccent,
                          image: Image.asset('assets/images/logo.jpg'),
                          onPress: () {

                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: kTopBorderRadius,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, AboutUs.routeName);
                            },
                            icon: 'assets/icons/about_us.svg',
                            title: 'About Us',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, News.routeName);
                            },
                            icon: 'assets/icons/event.svg',
                            title: 'News',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, timetable.routeName);
                            },
                            icon: 'assets/icons/timetable.svg',
                            title: 'Calendar',
                          ),
                          HomeCard(
                            onPress: () {

                            },
                            icon: 'assets/icons/p.svg',
                            title: 'Student Portal',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, QA.routeName);
                            },
                            icon: 'assets/icons/ask.svg',
                            title: 'Q&A',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, PhotoGallery.routeName);
                            },
                            icon: 'assets/icons/gallery.svg',
                            title: 'Photo Gallery',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, AboutUs.routeName);
                            },
                            icon: 'assets/icons/about_us.svg',
                            title: 'About Us',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, VideoGallery.routeName);
                            },
                            icon: 'assets/icons/video_1.svg',
                            title: 'Video Gallery',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, contact.routeName);
                            },
                            icon: 'assets/icons/resume.svg',
                            title: 'Contact Us',
                          ),

                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     HomeCard(
                      //       onPress: () {
                      //         Navigator.pushNamed(
                      //             context, LoginScreen.routeName);
                      //       },
                      //       icon: 'assets/icons/logout.svg',
                      //       title: 'Logout',
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);

  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Container(
          margin: EdgeInsets.all(9),
          child: InkWell(
            onTap: onPress,
            child: Ink(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: SizerUtil.deviceType == DeviceType.tablet
                        ? 30.sp
                        : 40.sp,
                    width: SizerUtil.deviceType == DeviceType.tablet
                        ? 30.sp
                        : 40.sp,
                    color: kOtherColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

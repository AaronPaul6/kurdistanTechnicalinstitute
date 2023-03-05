import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/Departments/Departments.dart';
import 'package:brain_school/screens/Calender/Calender.dart';
import 'package:brain_school/screens/gallery_photo/gallery_photo.dart';
import 'package:brain_school/screens/gallery_video/gallery_video.dart';
import 'package:brain_school/screens/why_kti/why_kti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
// import '../news_screen/news.dart';
import 'package:brain_school/screens/Q&A//Q&A.dart';
import 'package:brain_school/screens/about_us/about_us.dart';
import 'package:brain_school/screens/Contactus/contact.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:url_launcher/url_launcher.dart';
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
                        Text(
                          'WELCOME TO KTI',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StoryEffect(
                          color: Colors.orangeAccent,
                          image: Image.asset('assets/images/logo.jpg'),
                          onPress: () {
                            Navigator.pushNamed(context, MyProfileScreen.routeName);
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
                      const SizedBox(
                        height: 15,
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
                            // onPress: () {
                            //   Navigator.pushNamed(context, News.routeName);
                            // },
                            onPress: () {
                              launch('http://kti.edu.iq/archives/author/hashm');
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
                              Navigator.pushNamed(context, Calender.routeName);
                            },
                            icon: 'assets/icons/timetable.svg',
                            title: 'Calendar',
                          ),
                          HomeCard(
                            onPress: () {
                              launch('http://my.kti.edu.krd/login');
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
                              Navigator.pushNamed(context, departments.routeName);
                            },
                            icon: 'assets/icons/academic.svg',
                            title: 'Departments',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, WhyKti.routeName);
                            },
                            icon: 'assets/icons/why.svg',
                            title: 'Why KTI?',
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
                              Navigator.pushNamed(context, contact.routeName);
                            },
                            icon: 'assets/icons/resume.svg',
                            title: 'Contact Us',
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
                        ? 37.sp
                        : 47.sp,
                    width: SizerUtil.deviceType == DeviceType.tablet
                        ? 30.sp
                        : 40.sp,
                    color: kOtherColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
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

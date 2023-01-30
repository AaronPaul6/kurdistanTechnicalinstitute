import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/Timetable/Timetable.dart';
import 'package:brain_school/screens/gallery_photo/gallery_photo.dart';
import 'package:brain_school/screens/gallery_video/gallery_video.dart';
import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../news_screen/news.dart';
import 'widgets/student_data.dart';
import 'package:brain_school/screens/Ask/Ask.dart';
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
                          colors: [Colors.orangeAccent, Colors.blueAccent],
                          child: StudentPicture(
                              picAddress: 'assets/images/logo.jpg',
                              onPress: () {
                                Navigator.pushNamed(
                                    context, MyProfileScreen.routeName);
                              }),
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
                              Navigator.pushNamed(context, News.routeName);
                            },
                            icon: 'assets/icons/event.svg',
                            title: 'News',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, timetable.routeName);
                            },
                            icon: 'assets/icons/timetable.svg',
                            title: 'Time Table',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(context, Ask.routeName);
                            },
                            icon: 'assets/icons/ask.svg',
                            title: 'Ask',
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
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, MyProfileScreen.routeName);
                            },
                            icon: 'assets/icons/p.svg',
                            title: 'Profile',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            },
                            icon: 'assets/icons/logout.svg',
                            title: 'Logout',
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

// hi
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height:
                    SizerUtil.deviceType == DeviceType.tablet ? 30.sp : 40.sp,
                width:
                    SizerUtil.deviceType == DeviceType.tablet ? 30.sp : 40.sp,
                color: kOtherColor,
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
    );
  }
}

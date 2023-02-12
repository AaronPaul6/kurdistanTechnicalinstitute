import 'package:brain_school/screens/gallery_photo/gallery_photo.dart';
import 'package:brain_school/screens/gallery_video/gallery_video.dart';
import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:brain_school/screens/news_screen/news.dart';
import 'package:brain_school/screens/splash_screen/splash_screen.dart';
import 'package:brain_school/screens/Calender/Calender.dart';
import 'package:flutter/cupertino.dart';
import 'screens/about_us/about_us.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/my_profile/my_profile.dart';
import 'package:brain_school/screens/Q&A/Q&A.dart';
import 'package:brain_school/screens/signup/signup.dart';
import 'package:brain_school/screens/Contactus/contact.dart';
import 'package:brain_school/screens/gallery_photo/cafe.dart';
import 'package:brain_school/screens/gallery_photo/campus.dart';
import 'package:brain_school/screens/gallery_photo/car_park.dart';
import 'package:brain_school/screens/gallery_photo/library.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  AboutUs.routeName: (context) => AboutUs(),
  News.routeName: (context) => News(),
  Calender.routeName: (context) => Calender(),
  QA.routeName: (context) => QA(),
  signup.routeName: (context) => signup(),
  VideoGallery.routeName: (context) => VideoGallery(),
  PhotoGallery.routeName: (context) => PhotoGallery(),
  CafeGallery.routeName: (context) => CafeGallery(),
  CarParkGallery.routeName: (context) => CarParkGallery(),
  LibraryGallery.routeName: (context) => LibraryGallery(),
  CampusGallery.routeName: (context) => CampusGallery(),

  contact.routeName: (context) => contact()

};

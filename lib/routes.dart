import 'package:arya_kti/screens/gallery_photo/gallery_photo.dart';
import 'package:arya_kti/screens/gallery_video/gallery_video.dart';
import 'package:arya_kti/screens/login_screen/login_screen.dart';
import 'package:arya_kti/screens/news_screen/news.dart';
import 'package:arya_kti/screens/splash_screen/splash_screen.dart';
import 'package:arya_kti/screens/Calender/Calender.dart';
import 'package:flutter/cupertino.dart';
import 'screens/about_us/about_us.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/my_profile/my_profile.dart';
import 'package:arya_kti/screens/Q&A/Q&A.dart';
import 'package:arya_kti/screens/signup/signup.dart';
import 'package:arya_kti/screens/Contactus/contact.dart';
import 'package:arya_kti/screens/gallery_photo/cafe.dart';
import 'package:arya_kti/screens/gallery_photo/campus.dart';
import 'package:arya_kti/screens/gallery_photo/car_park.dart';
import 'package:arya_kti/screens/gallery_photo/library.dart';
import 'package:arya_kti/screens/why_kti/why_kti.dart';
import 'package:arya_kti/screens/departments/departments.dart';

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
  contact.routeName: (context) => contact(),
  WhyKti.routeName: (context) => WhyKti(),
  departments.routeName: (context) => departments()

};

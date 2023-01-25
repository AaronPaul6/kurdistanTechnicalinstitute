import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:brain_school/screens/news_screen/news.dart';
import 'package:brain_school/screens/splash_screen/splash_screen.dart';
import 'package:brain_school/screens/Timetable/Timetable.dart';
import 'package:flutter/cupertino.dart';
import 'screens/about_us/about_us.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/my_profile/my_profile.dart';
import 'package:brain_school/screens/Ask/Ask.dart';
import 'package:brain_school/screens/signup/signup.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  AboutUs.routeName: (context) => AboutUs(),
  News.routeName: (context) => News(),
  timetable.routeName: (context) => timetable(),
  Ask.routeName: (context) => Ask(),
  signup.routeName: (context) => signup(),
};

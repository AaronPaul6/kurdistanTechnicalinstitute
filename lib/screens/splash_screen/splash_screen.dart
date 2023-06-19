import 'package:arya_kti/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {

        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 25.h,
              width: 44.w,
            ),
            Text(
              'Welcome\ To KTI',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),

          ],
        ),
      ),
    );
  }
}

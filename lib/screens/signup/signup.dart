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

class signup extends StatefulWidget {
  static String routeName = 'signup';

  @override
  _signup createState() => _signup();
}

class _signup extends State<signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        title: Text(
          'Signup',
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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
            ),
            width: 100.w,
            height: 28.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('WELCOME TO',
                        style: Theme.of(context).textTheme.subtitle1),
                    Text('Kurdistan Technical Institute',
                        style: Theme.of(context).textTheme.subtitle2),
                    sizedBox,
                  ],
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 40.h,
                  width: 30.w,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 6.w, right: 6.w),
              decoration: BoxDecoration(
                color: kOtherColor,
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // color: kOtherColor,
                      sizedBox,
                      // buildEmailField(),
                      sizedBox,
                      // buildPasswordField(),
                      sizedBox,

                      DefaultButton(
                        //signup
                        onPress: () {
                          Navigator.pushNamed(context, signup.routeName);
                        },
                        title: 'Signup',

                        iconData: Icons.person_add,
                      ),
                      sizedBox,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

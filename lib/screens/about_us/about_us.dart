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
          ),
        ),

        // body: Column(
        //   children: [
        //     Container(
        //       width: 100.w,
        //       height: 20.h,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Text('ABOUT US',
        //                   style: Theme.of(context).textTheme.subtitle1),
        //               Text('Kurdistan Technical Institute',
        //                   style: Theme.of(context).textTheme.subtitle2),
        //               sizedBox,
        //             ],
        //           ),
        //           Image.asset(
        //             'assets/images/logo.png',
        //             height: 20.h,
        //             width: 20.w,
        //           ),
        //           SizedBox(
        //             height: kDefaultPadding / 2,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         padding: EdgeInsets.only(left: 6.w, right: 6.w),
        //         decoration: BoxDecoration(
        //           color: kOtherColor,
        //           // borderRadius: kTopBorderRadius,
        //         ),
        //         child: Form(
        //           key: _formKey,
        //           child: SingleChildScrollView(
        //             child: Column(
        //               children: [
        //                 // color: kOtherColor,
        //                 sizedBox,
        //                 buildEmailField(),
        //                 sizedBox,
        //                 // buildPasswordField(),
        //                 sizedBox,
        //                 DefaultButton(
        //                   onPress: () {
        //                     if (_formKey.currentState!.validate()) {
        //                       Navigator.pushNamedAndRemoveUntil(context,
        //                           HomeScreen.routeName, (route) => false);
        //                     }
        //                   },
        //                   title: 'LOGIN',
        //                   iconData: Icons.arrow_forward_outlined,
        //                 ),
        //                 sizedBox,
        //                 Align(
        //                   alignment: Alignment.bottomRight,
        //                   child: Text(
        //                     'Forgot Password',
        //                     textAlign: TextAlign.end,
        //                     style: Theme.of(context)
        //                         .textTheme
        //                         .subtitle2!
        //                         .copyWith(
        //                         color: Colors.blueGrey,
        //                         fontWeight: FontWeight.w500),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Mobile Number/Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if it does not matches the pattern, like
          //it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
      },
    );
  }

  // TextFormField buildPasswordField() {
  //   return TextFormField(
  //     // obscureText: _passwordVisible,
  //     textAlign: TextAlign.start,
  //     keyboardType: TextInputType.visiblePassword,
  //     style: kInputTextStyle,
  //     decoration: InputDecoration(
  //       labelText: 'Password',
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: IconButton(
  //         onPressed: () {
  //           setState(() {
  //             // _passwordVisible = !_passwordVisible;
  //           });
  //         },
  //         // icon: Icon(
  //           // _passwordVisible
  //           //     ? Icons.visibility_off_outlined
  //               : Icons.visibility_off_outlined,
  //         // ),
  //         iconSize: kDefaultPadding,
  //       ),
  //     ),
  //     validator: (value) {
  //       if (value!.length < 5) {
  //         return 'Must be more than 5 characters';
  //       }
  //     },
  //   );
  // }
}

  // }


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
            backgroundColor: Colors.blue.shade800,
          ),
        ),

      ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset('assets/images/kti_image.jpg',width: 416.6,height: 239.9,fit: BoxFit.cover,)
            ],
          )


        )
    );
  }

  // TextFormField buildEmailField() {
  //   return TextFormField(
  //     textAlign: TextAlign.start,
  //     keyboardType: TextInputType.emailAddress,
  //     style: kInputTextStyle,
  //     decoration: InputDecoration(
  //       labelText: 'Mobile Number/Email',
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //     ),
  //     validator: (value) {
  //       for validation
        // RegExp regExp = new RegExp(emailPattern);
        // if (value == null || value.isEmpty) {
        //   return 'Please enter some text';
        //   if it does not matches the pattern, like
          // it not contains @
        // } else if (!regExp.hasMatch(value)) {
        //   return 'Please enter a valid email address';
        // }
      // },
    // );
  // }

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


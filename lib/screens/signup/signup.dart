import 'package:arya_kti/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:arya_kti/components/custom_buttons.dart';

import '../login_screen/login_screen.dart';
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
      backgroundColor: Color(0xFF345FB4),
      appBar: AppBar(
        backgroundColor: Color(0xFF345FB4),
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
            backgroundColor: Color(0xFF345FB4),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(

            decoration: BoxDecoration(
              color: Color(0xFF345FB4),
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
                    Text('Create An Account',
                        style: Theme.of(context).textTheme.subtitle1),

                    sizedBox,
                  ],
                ),
                Image.asset(
                  'assets/images/temp.jpg',
                  height: 60.h,
                  width: 40.w,
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
                      sizedBox,
                      sizedBox,
                      buildNameField(),
                      sizedBox,
                      buildEmailField(),
                      sizedBox,
                      buildPasswordField(),
                      sizedBox,

                      sizedBox,

                      DefaultButton(
                        //signup
                        onPress: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
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

  TextFormField buildNameField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,

      decoration: InputDecoration(
        labelText: 'USERNAME',
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

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,

      decoration: InputDecoration(
        labelText: 'EMAIL',
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

  TextFormField buildPasswordField() {
    return TextFormField(

      textAlign: TextAlign.start,

      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'PASSWORD',
        floatingLabelBehavior: FloatingLabelBehavior.always,

      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }

}

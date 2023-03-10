import 'package:arya_kti/components/custom_buttons.dart';
import 'package:arya_kti/constants.dart';
import 'package:arya_kti/screens/home_screen/home_screen.dart';
import 'package:arya_kti/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 35.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('WELCOME TO'),
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
                        buildEmailField(),
                        sizedBox,
                        buildPasswordField(),
                        sizedBox,
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Forgot Password',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                        sizedBox,

                        DefaultButton(
                          //login
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  HomeScreen.routeName, (route) => false);
                            }
                          },
                          title: 'LOGIN',
                          iconData: Icons.arrow_forward_outlined,
                        ),
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
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,
      initialValue: 'hax@mail.com',
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

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      initialValue: '123456789',
      keyboardType: TextInputType.visiblePassword,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}

import 'package:arya_kti/constants.dart';
import 'package:arya_kti/screens/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_buttons.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim(),);
  }

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  final _formKey = GlobalKey<FormState>();

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
                      Text('UNIVERSITY'),
                      Text('MOBILE'),
                      Text('APPLICATION'),
                    ],
                  ),
                  // Image.asset(
                  //   'assets/images/temp.jpg',
                  //   height: 100.h,
                  //   width: 50.w,
                  // ),
                  // SizedBox(
                  //   height: kDefaultPadding / 2,
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 6.w, right: 6.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        SizedBox(
                          height: 60,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF345FB4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Email Address',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 40,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF345FB4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),

                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 60,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            onTap: signIn,
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFF345FB4)),
                              child: Center(child:
                              Text('Sign In',)),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 60,
                        ),

                        Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dont Have An Account? ',
                                style: TextStyle(color: Colors.black, fontSize: 19)),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        DefaultButton(
                          //signup
                          onPress: () {
                            Navigator.pushNamed(context, signup.routeName);
                            Navigator.pushNamed(context, 'signup');
                          },
                          title: 'Signup',
                          iconData: Icons.person_add,
                        ),

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

  }






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


class PhotoGallery extends StatefulWidget {
  static String routeName = 'PhotoGallery';

  @override
  PhotoGalleryState createState() => PhotoGalleryState();

}


class PhotoGalleryState extends State<PhotoGallery> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        centerTitle: true,
        title:Center(
          child: Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color:Colors.black38,width: 1.0, style: BorderStyle.solid)
            // ),
            child: Center(
              child: Row(
                children:[
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    'Photo Gallery',
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Icon(Icons.image, size: 40.0, color: Colors.lightGreenAccent,textDirection: hi,
                    ),
                  )
                ]
              ),
            ),
          )
        )

        ,
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

      ),
      body:
      Container(
          child: Row(
            children: [
              Column(
               children: [
                 Text("data", style: TextStyle(
                   fontSize: 25,

                 ))
               ] 
              ) ,
              Column(

              )
            ],
          )
      )
    );
  }
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
      } else if (!regExp.hasMatch(value)) {
        return 'Please enter a valid email address';
      }
    },
  );
}


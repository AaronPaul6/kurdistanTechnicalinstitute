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

class Ask extends StatefulWidget {
  static String routeName = 'Ask';
//String content = "";
  @override
  _Ask createState() => _Ask();
}

class _Ask extends State<Ask> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   //
      //   //
      //   //   backgroundColor: Colors.white,
      //   //   //when user taps anywhere on the screen, keyboard hides
      //   //   appBar: AppBar(
      //   //     ,centerTitle: true,
      //   //     title: Text(
      //   //       'Ask',
      //   //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   //   ),
      //
      //
      //       automaticallyImplyLeading: false,
      //       leadingWidth: 100,
      //       leading: ElevatedButton.icon(
      //         onPressed: () => Navigator.of(context).pop(),
      //         icon: const Icon(Icons.arrow_left_sharp),
      //         label: const Text('Back'),
      //         style: ElevatedButton.styleFrom(
      //           elevation: 0,
      //         ),
      //       ),
      //
      //
      //   ),
      //
      //   body: ListView(
      //   children :[
      //     InkWell()
      //     Container(color: Colors.orange.shade100),
      //     Container(color: Colors.orange.shade100),
      //   ],
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:  2)),
    );
  }

}

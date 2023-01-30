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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //when user taps anywhere on the screen, keyboard hides
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'Ask',
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(""),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    //1
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Information'),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Slaw',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text('choni'),
                          ],
                        ),
                      ),
                    ),

                    //2
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //3
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //4
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //5
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //6
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //7

                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //8

                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //9

                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //10
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    ),

                    //11
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade800,
                      ),
                      child: Center(child: Text("info")),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';

class timetable extends StatefulWidget {
  static String routeName = 'timetable';

  @override
  _timetable createState() => _timetable();
}

class _timetable extends State<timetable> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF345FB4),
        centerTitle: true,
        title: Text(
          'Time Table',
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
                // SizedBox(height: 30),
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
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Pharmacy Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'To establish the tuition fees for all departments, annual tuition fees vary by department.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Medical Lab Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'For admission requirements, please refer to the publication published on the website of the Institute.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Nursing Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'To apply, you must visit the institute to obtain the form, or fill out the form posted on the institute website. The entire application process can be found on the Institute website.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
//5
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('IT Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Only professionals with the same department at the institute will be accepted. If you would like more information, please visit the department you wish to study. The staff in that department will be happy to help you.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('CS Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'The subjects taught at the institute are determined by departments and specialties, from preparing for your future job to scientific and theoretical skills. All this is taught by qualified teachers.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Business Administration Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Yes, we have many suitable places for students to live both inside and outside the institute, but each has its own price. For more information, please visit the institutes website.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Accounting Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'The subjects taught at the institute are determined by departments and specialties, from preparing for your future job to scientific and theoretical skills. All this is taught by qualified teachers.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Interior Design Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'The subjects taught at the institute are determined by departments and specialties, from preparing for your future job to scientific and theoretical skills. All this is taught by qualified teachers.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Digital Media Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'The subjects taught at the institute are determined by departments and specialties, from preparing for your future job to scientific and theoretical skills. All this is taught by qualified teachers.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Petroleum Time Table', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'The subjects taught at the institute are determined by departments and specialties, from preparing for your future job to scientific and theoretical skills. All this is taught by qualified teachers.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                          ],
                        ),
                      ),
                  ]),
                ),
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
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
      },
    );
  }
}

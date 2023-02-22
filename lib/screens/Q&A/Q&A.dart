import 'package:flutter/material.dart';

class QA extends StatefulWidget {
  static String routeName = 'Q&A';

  @override
  _QA createState() => _QA();
}

class _QA extends State<QA> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'Question & Answer',
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
                          title: Text('How much does it cost to study at KTI?', style : TextStyle(
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
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),




                    //2
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the courses offered?', style : TextStyle(
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
                                'Please visit the Bologna System page on the Institutes website for more information about the program and curriculum, as well as to get a diploma from the Institute. The institute can also provide you with a copy of the publication. Students at Kurdistan Technical Institute study for two years and are equipped with the skills they need in the technical sector and labor market, in the most scientific method possible and in accordance with global education standards.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),






//3
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the admission requirements?', style : TextStyle(
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
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),





//4
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How can I apply for admission to the institute?', style : TextStyle(
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
                                  fontSize: 18,
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
                          title: Text('Is the institute accepting professional certificates?', style : TextStyle(
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
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),






                    //6
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the subjects I study at the institute?', style : TextStyle(
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
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //7
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Is there accommodation for out-of-town students?', style : TextStyle(
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
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //8
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Can I visit the institute?', style : TextStyle(
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
                                'The institute is best visited during the start of the school year and during major activities. If it is not possible to visit us on specific times, please call our guides at any time to explore the institute. Because the institute has an open door policy, the search guide and institute tour brochure will assist you in swiftly becoming acquainted with the institute.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),





                    //9
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How can I request that publication?', style : TextStyle(
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
                                'Call the phone number indicated at the bottom of the webpage if you want the Institutes publications in booklet, audio, Braille, or large fonts.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),





                    //10
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Where can I find information about financial support for my studies?', style : TextStyle(
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
                                'For information about study financial support you can get it from the Financial Support section of the Institute website.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    //11
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How do I register?', style : TextStyle(
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
                                'Regarding the registration mechanism, you or someone close to you can visit the institute and obtain a special form. After filling it, you will return it to the institute so that you can be ordered to be admitted as a candidate.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    //18
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What can I do after graduating from college?', style : TextStyle(
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
                                'Please visit the Job Search Services section of the Institutes main website to find job opportunities and the opportunities the Institute can provide or facilitate',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //13

                    //11
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Can I park my car inside the institute?', style : TextStyle(
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
                                'You can park your car in the designated parking spaces within the institute. For more information, please contact Institute Security.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class WhyKti extends StatefulWidget {
  static String routeName = 'WhyKti';

  @override
  WhyKtiState createState() => WhyKtiState();
}

class WhyKtiState extends State<WhyKti> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF345FB4),
        centerTitle: true,
        title: Text(
          'WHY KTI?',
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
      body: Center(
        child: SingleChildScrollView(
    physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child:
              Image.asset(
                'assets/images/why1.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              child:
              Image.asset(
                'assets/images/why2.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              child:
              Image.asset(
                'assets/images/why3.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),

            ),
            Container(
              child:
              Image.asset(
                'assets/images/why4.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              child:
              Image.asset(
                'assets/images/why5.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ], //children
        ),
      ),
      ));
  }
}

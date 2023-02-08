import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const contact());
}
_makingPhoneCall() async {
  var url = Uri.parse("tel:9776765434");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class contact extends StatelessWidget {
  static String routeName = 'contact';
  const contact({Key? key}) : super(key: key);

  final String _phoneNumber = '+9647710125050' ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'CONTACT US',
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
        // backgroundColor: Colors.blueGrey,
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              height: 250,
            )),
            const Text(
              "\nPlease contacts us bellow !",
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: MaterialButton(
                onPressed: ( ) async{
                  final _call='tel:$_phoneNumber';
                },
                color: Colors.blue.shade800,
                child: Text('Call Us', style: TextStyle( color: Colors.white , fontSize: 20,
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



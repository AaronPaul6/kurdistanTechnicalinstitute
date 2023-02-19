import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

void main() {
  runApp(const contact());
}

void _makePhoneCall(String phoneNumber) async {
  if (await canLaunch('tel:$phoneNumber')) {
    await launch('tel:$phoneNumber');
  } else {
    throw 'Could not launch $phoneNumber';
  }
}

void _sendEmail(String recipient, String subject, String body) async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: recipient,
    query: 'subject=$subject&body=$body',
  );

  String url = params.toString();

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class contact extends StatelessWidget {
  static String routeName = 'contact';

  const contact({Key? key}) : super(key: key);

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
              height: 130,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _makePhoneCall('+9647717028282');
                    // Do something
                  },
                  child: Row(

                    children: [
                      Icon(Icons.phone),
                      Text(' Calls Us   '),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue.shade800,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.blue.shade300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _sendEmail('info@kti.edu.iq', 'Subject', 'Body');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      Text(' Email Us '),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.blue.shade300),
                    //
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://www.instagram.com/ktiinstitute/?hl=en');
                    // Do something
                  },
                  child: Row(

                    children: [
                      Icon(Icons.camera_alt_outlined),
                      Text(' Instagram'),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue.shade800,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.blue.shade300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    launch('https://www.facebook.com/ktiinstitute/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      Text(' Facebook'),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.blue.shade300),
                    //comment
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

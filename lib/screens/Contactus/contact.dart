import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
enum SocialMedia{facebook, twitter, email, instagram}

final String _phoneNumber = '009647717028282' ;
final Uri _url =Uri.parse('https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi52s2D-5H9AhV_YPEDHZ8FA-gQFnoECBIQAQ&url=https%3A%2F%2Fwww.facebook.com%2Fktiinstitute%2F&usg=AOvVaw0RQUWMdYVFepaV9IRSo9OO');
final urls = {
  SocialMedia.facebook:
      'https://www.facebook.com/ktiinstitute/',
};
final url = {
  SocialMedia.instagram:
  'https://www.instagram.com/ktiinstitute/?hl=en',
};
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
              height: 40,
            ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:[
               Container(
                 child: MaterialButton(
                   padding: EdgeInsets.all(35),
                   color: Colors.blue.shade800,
                   minWidth: 100,
                   height: 60,
                   child: Align(
                     alignment: Alignment.centerLeft,
                     child:Icon(
                       Icons.phone, size: 60, color: Colors.white,
                     ),
                   ),
                   onPressed: ( ) async{
                     final _call='tel:$_phoneNumber';
                   },

                 ),
               ),

               Container(
                 child: MaterialButton(
                   padding: EdgeInsets.all(35),
                   color: Colors.blue.shade800,
                   minWidth: 100,
                   height: 60,
                   child: Align(
                     alignment: Alignment.centerLeft,
                     child:Icon(
                       Icons.email, size: 60, color: Colors.white,
                     ),
                   ),
                   onPressed: ( ) {
                     launchUrl('mailto:marfsaman12345@gmail.com' as Uri);
                   },

                 ),
               ),

             ],//children
           ),
        SizedBox(height: 40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Container(
              child: MaterialButton(
                padding: EdgeInsets.all(35),
                color: Colors.blue.shade800,
                minWidth: 100,
                height: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:Icon(
                    Icons.facebook_outlined, size: 60, color: Colors.white,
                  ),
                ),
                onPressed: ( ) {
                  launchUrl('https://www.facebook.com/ktiinstitute/' as Uri);
                },

              ),
            ),

            Container(
              child: MaterialButton(
                padding: EdgeInsets.all(35),
                color: Colors.blue.shade800,
                minWidth: 100,
                height: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:Icon(
                    Icons.camera, size: 60, color: Colors.white,
                  ),
                ),
                onPressed: ( ) {
                  launchUrl('https://www.instagram.com/ktiinstitute/?hl=en' as Uri);
                },

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



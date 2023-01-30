import 'package:flutter/material.dart';

void main() {
  runApp(const contact());
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
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 170,
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 20,
                      ),
                    ]),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.alternate_email,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text("Write to Us"),
                        Text("info@kti.edu.iq"),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 170,
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 20,
                      ),
                    ]),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.help_outline,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text("FAQs"),
                        Text(
                          "\nFrequently Asked Questions",
                          style: TextStyle(fontSize: 11),
                        ),

                      ],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 170,
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 20,
                      ),
                    ]),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.phone,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text("Contact Phone"),
                        Text("+(964)07717028282"),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 170,
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 20,
                      ),
                    ]),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.location_city,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text("Address"),
                        Text("Suli Heights Project"),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
            const Text(
              "\n\n\nCopyright. @2023 KTI",
              style: TextStyle(color: Colors.blue),
            ),
            const Text(
              "All rights are reserved",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const departments());
}

class departments extends StatelessWidget {
  static String routeName = 'departments';

  const departments ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'DEPARTMENTS',
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
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Center(
                ),
            const SizedBox(
              height: 80,
            ),


            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://ph.kti.edu.iq/');
                  },
                  child: Row(

                    children: [
                      Icon(Icons.local_pharmacy,),
                      Text(' Pharmacy'),
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
                    launch('https://ml.kti.edu.iq/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.medical_information),
                      Text('Medical Lab'),
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

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://nu.kti.edu.iq/');
                  },
                  child: Row(

                    children: [
                      Icon(Icons.medication_sharp,),
                      Text(' Nursing '),
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
                    launch('https://it.kti.edu.iq/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.computer,),
                      Text(' IT     '),
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

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://ba.kti.edu.iq/');
                  },
                  child: Row(

                    children: [
                      Icon(Icons.business,),
                      Text(' Business '),
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
                    launch('https://cs.kti.edu.iq/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.computer,),
                      Text('Computer Science'),
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

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://ac.kti.edu.iq/');
                  },
                  child: Row(

                    children: [
                      Icon(Icons.account_box,),
                      Text(' Accounting '),
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
                    launch('https://ide.kti.edu.iq/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.design_services,),
                      Text('Interior Design'),
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

            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    launch('https://pr.kti.edu.iq/');
                  },
                  child: Row(

                    children: [
                      Icon(Icons.account_box,),
                      Text(' Petroleum '),
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
                    launch('https://dm.kti.edu.iq/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.design_services,),
                      Text('Digital Media'),
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
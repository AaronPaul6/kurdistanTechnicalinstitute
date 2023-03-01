import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://ph.kti.edu.iq/');
                  },
                  icon: 'assets/icons/pharmacy.svg',
                  title: 'Pharmacy',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://ml.kti.edu.iq/');
                  },
                  icon: 'assets/icons/lab.svg',
                  title: 'Medical Lab',
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://nu.kti.edu.iq/');
                  },
                  icon: 'assets/icons/nurse.svg',
                  title: 'Nursing',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://it.kti.edu.iq/');
                  },
                  icon: 'assets/icons/it.svg',
                  title: 'IT Department',
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://ba.kti.edu.iq/');
                  },
                  icon: 'assets/icons/busness.svg',
                  title: 'Business',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://cs.kti.edu.iq/');
                  },
                  icon: 'assets/icons/computer.svg',
                  title: 'Computer Science',
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://ac.kti.edu.iq/');
                  },
                  icon: 'assets/icons/account.svg',
                  title: 'Accounting',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://ide.kti.edu.iq/');
                  },
                  icon: 'assets/icons/ie.svg',
                  title: 'Interior Design',
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://pr.kti.edu.iq/');
                  },
                  icon: 'assets/icons/petrol.svg',
                  title: 'Petroleum',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://dm.kti.edu.iq/');
                  },
                  icon: 'assets/icons/media.svg',
                  title: 'Digital Media',
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}




class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
        required this.onPress,
        required this.icon,
        required this.title})
      : super(key: key);

  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Container(
          margin: EdgeInsets.all(9),
          child: InkWell(
            onTap: onPress,
            child: Ink(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF345FB4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: SizerUtil.deviceType == DeviceType.tablet
                        ? 37.sp
                        : 47.sp,
                    width: SizerUtil.deviceType == DeviceType.tablet
                        ? 30.sp
                        : 40.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
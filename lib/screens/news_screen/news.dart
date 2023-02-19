// import 'package:flutter/material.dart';
//
// class News extends StatefulWidget {
//   static String routeName = 'News_page';
//
//   @override
//   _News createState() => _News();
// }
//
// class _News extends State<News> {
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF345FB4),
//         centerTitle: true,
//         title: Text(
//           'News',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         automaticallyImplyLeading: false,
//         leadingWidth: 100,
//         leading: ElevatedButton.icon(
//           onPressed: () => Navigator.of(context).pop(),
//           icon: const Icon(Icons.arrow_left_sharp),
//           label: const Text('Back'),
//           style: ElevatedButton.styleFrom(
//             elevation: 0,
//             backgroundColor: Color(0xFF345FB4),
//           ),
//         ),
//
//       ),
//     );
//   }
//
// }



import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class News extends StatefulWidget {
  static String routeName = 'News_page';
  const News({Key? key}) : super(key: key);

  @override
  _News createState() => _News();
}

class _News extends State<News> {
  final _formKey = GlobalKey<FormState>();

  bool isLoading = true;

  // Webview Controller
  WebViewController controller = WebViewController();

  // Function for changing URL
  changeUrl(String url) {
    WebViewController newcontroller = WebViewController();
    newcontroller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse(url),
      );
    if (mounted) {
      setState(() {
        controller = newcontroller;
      });
    }
  }

  int _selectedIndex = 0;
  final List<String> urlList = <String>[
    'https://usamasadiq.engineer/',
    'https://usamasadiq.engineer/#services',
    'https://usamasadiq.engineer/#portfolio',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeUrl(urlList[_selectedIndex]);
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    changeUrl(urlList[index]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        )
            : WebViewWidget(controller: controller),
        // Bottom Navigation Bar

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onTabTapped,
        ),
      ),
    );
  }
}

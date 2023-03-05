import 'package:arya_kti/routes.dart';
import 'package:arya_kti/screens/splash_screen/splash_screen.dart';
import 'package:arya_kti/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FirebaseAuth fba = FirebaseAuth.instance;
final FirebaseMessaging fcm = FirebaseMessaging.instance;
late List<User> users = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  initFirebaseMessaging();

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.lightGreen),

  ));
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");

}

void displayNotification(RemoteMessage msg) async {
  String title = "";

  title = msg.data['offer'] ?? msg.notification?.title ?? '';

  Color notificationColor = Colors.blue;

  if (msg.data.containsKey("color")) {
    if (msg.data['color'].toString().startsWith("#")) {
      notificationColor = HexColor.fromHex(msg.data['color']);
    } else {
      switch (msg.data['color'].toString()) {
        case "red":
          notificationColor = Colors.red;
          break;
        case "green":
          notificationColor = Colors.green;
          break;
        case "blue":
          notificationColor = Colors.blue;
          break;
        case "purple":
          notificationColor = Colors.purple;
          break;
      }
    }
  }

  var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  var initializationSettingsAndroid =
  const AndroidInitializationSettings('kti');
  var initializationSettings =
  InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

void initFirebaseMessaging() async {
  String? token = await fcm.getToken();
  print("token=" + token.toString());

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  NotificationSettings settings = await fcm.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    provisional: false,
    announcement: true,
    carPlay: false,
    criticalAlert: true,
  );

  print("user auth=" + settings.authorizationStatus.toString());

  await FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    //Ran only when app is in foreground. firebase take's care of when app is in background.
    displayNotification(message);

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KTI',
        theme: CustomTheme().baseTheme,
        initialRoute: SplashScreen.routeName,
        routes: routes,
      );
    });
  }
}

extension HexColor on Color {

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

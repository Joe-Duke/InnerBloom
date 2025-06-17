import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();

  final FlutterLocalNotificationsPlugin notifications = FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initSettings = InitializationSettings(android: androidInit);
  await notifications.initialize(initSettings);

  runApp(const InnerBloomApp());
}

class InnerBloomApp extends StatelessWidget {
  const InnerBloomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InnerBloom',
      theme: ThemeData(
        primaryColor: Colors.deepPurple[300],
        scaffoldBackgroundColor: Colors.green[50],
      ),
      home: const HomeScreen(),
    );
  }
}

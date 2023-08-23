import 'package:flutter/material.dart';
import 'package:flutterassignment3/PopUpScreens/LinkedDevices.dart';
import 'package:flutterassignment3/PopUpScreens/NewBroadcast.dart';
import 'package:flutterassignment3/PopUpScreens/NewGroup.dart';
import 'package:flutterassignment3/PopUpScreens/StarredMessages.dart';
import 'package:get/get.dart';
import 'package:flutterassignment3/MainScreen.dart';
import 'package:flutterassignment3/PopUpScreens/Settings.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => MainScreen(),
        "ld": (context) => LinkedDevices(),
        "nb": (context) => NewBroadcast(),
        "ng": (context) => NewGroup(),
        "setting": (context) => Settings(),
        "stm": (context) => StarredMessages(),
      },
      initialRoute: '/',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Color(0xFF008069)),
      ),
    );
  }
}

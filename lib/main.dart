import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vote_bharat/UI/auth/register_screen.dart';
import 'package:vote_bharat/UI/auth/login_screen.dart';
import 'package:vote_bharat/themes/themes.dart';
import 'package:vote_bharat/utils/routes.dart';

import 'UI/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static String userId = "";

  static String name = "";

  static String email = "";

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vote Bharat!',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.registerRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginScreen(),
        MyRoutes.registerRoute: (context) => const RegisterScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
      },
    );
  }
}

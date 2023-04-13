import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vote_bharat/UI/VoterEducation.dart';
import 'package:vote_bharat/UI/apply_voter_id.dart';
import 'package:vote_bharat/UI/auth/register_screen.dart';
import 'package:vote_bharat/UI/auth/login_screen.dart';
import 'package:vote_bharat/UI/election_updates.dart';
import 'package:vote_bharat/UI/link_success.dart';
import 'package:vote_bharat/UI/my_profile.dart';
import 'package:vote_bharat/themes/themes.dart';
import 'package:vote_bharat/utils/routes.dart';

import 'UI/apply_success.dart';
import 'UI/home_screen.dart';
import 'UI/link_voter_id.dart';

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
  static int sectionNow = 1;

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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginScreen(),
        MyRoutes.registerRoute: (context) => const RegisterScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.applyVoterID: (context) => const ApplyVoterID(),
        MyRoutes.linkVoterID: (context) => const LinkVoterID(),
        MyRoutes.linkSuccess: (context) => const LinkSuccessful(),
        MyRoutes.applySuccess: (context) => const ApplySuccessful(),
        MyRoutes.electionUpdates: (context) => const ElectionUpdates(),
        MyRoutes.myProfile: (context) => const MyProfile(),
        MyRoutes.voterEducation: (context) => VoterEducation(),
      },
    );
  }
}

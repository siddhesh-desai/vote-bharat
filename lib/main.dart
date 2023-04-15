import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vote_bharat/UI/article_screen.dart';
import 'package:vote_bharat/UI/leaderboard_screen.dart';
import 'package:vote_bharat/UI/referal_screen.dart';
import 'package:vote_bharat/UI/voter_education.dart';
import 'package:vote_bharat/UI/apply_voter_id.dart';
import 'package:vote_bharat/UI/auth/register_screen.dart';
import 'package:vote_bharat/UI/auth/login_screen.dart';
import 'package:vote_bharat/UI/election_updates.dart';
import 'package:vote_bharat/UI/link_success.dart';
import 'package:vote_bharat/UI/my_profile.dart';
import 'package:vote_bharat/themes/themes.dart';
import 'package:vote_bharat/utils/routes.dart';
import 'UI/election_day.dart';
import 'UI/social_network.dart';
import 'UI/apply_success.dart';
import 'UI/candidates_screen.dart';
import 'UI/home_screen.dart';
import 'UI/link_voter_id.dart';
import 'UI/video_screen.dart';

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
      initialRoute: MyRoutes.loginRoute,
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
        MyRoutes.voterEducation: (context) => const VoterEducation(),
        MyRoutes.referalRoute: (context) => const ReferalScreen(),
        MyRoutes.socialNetworkRoute: (context) => const SocialMedia(),
        MyRoutes.candidatesRoute: (context) => const CandidateScreen(),
        MyRoutes.articleRoute: (context) => const ArticleScreen(),
        MyRoutes.leaderboardRoute: (context) => const LeaderBoardScreen(),
        MyRoutes.electionDayRoute: (context) => ElectionDayScreen(),
        MyRoutes.videoScreenRoute: (context) => const VideoScreen(),
      },
    );
  }
}

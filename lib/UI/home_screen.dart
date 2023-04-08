import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello ${MyApp.name} to Home Page"),
      ),
      drawer: const MyDrawer(),
    );
  }
}

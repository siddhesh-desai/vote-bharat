import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/routes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.myProfile);
            },
            child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Color(0xffea6e17),
                ),
                accountEmail: Text(
                  MyApp.email,
                  // "siddheshdesai@gmail.com",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                accountName: Text(
                  MyApp.name,
                  // "Siddhesh Desai",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: const Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ),
          ListTile(
            selected: false,
            selectedTileColor: Colors.grey[200],
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            leading: const Icon(
              Icons.home,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                MyApp.sectionNow = 2;
              });
              // Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
            leading: const Icon(
              Icons.people_alt,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Social Network",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.electionUpdates);
            },
            leading: const Icon(
              Icons.update,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Election Updates",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.pushNamed(context, MyRoutes.profileRoute);
              Navigator.pushNamed(context, MyRoutes.voterEducation);
            },
            leading: const Icon(
              Icons.cast_for_education,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Education Resources",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
            leading: const Icon(
              Icons.leaderboard,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Leaderboard",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
            leading: const Icon(
              Icons.celebration,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Rewards",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
            leading: const Icon(
              Icons.how_to_vote,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Election Day",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              MyApp.userId = "";
              MyApp.name = "";
              MyApp.email = "";
              Navigator.pushReplacementNamed(context, MyRoutes.loginRoute);
            },
            leading: const Icon(
              Icons.logout,
              color: Color(0xffea6e17),
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                color: Color(0xffea6e17),
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

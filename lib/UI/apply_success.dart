import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/routes.dart';
import '../widgets/utils.dart';

class ApplySuccessful extends StatefulWidget {
  const ApplySuccessful({Key? key}) : super(key: key);

  @override
  _ApplySuccessfulState createState() => _ApplySuccessfulState();
}

class _ApplySuccessfulState extends State<ApplySuccessful> {
  String status = "";

  @override
  void initState() {
    super.initState();
    _getById();
  }

  Future<void> _getById() async {
    try {
      final docSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(MyApp.userId)
          .get();
      if (docSnapshot.exists) {
        setState(() {
          status = docSnapshot.get(FieldPath(['status']));
        });
      } else {
        Utils().toastMsg('Error fetching from database');
      }
    } catch (e) {
      print('Error - $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfefd),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffea6e17),
        // backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Application Status",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: Image(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/4315/4315881.png"),
                  height: 220,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                child: Text(
                  "Applied Successful!",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    fontSize: 26,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "Status: $status",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
                  },
                  color: const Color(0xff049018),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(16),
                  textColor: const Color(0xffffffff),
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Back to Home",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/routes.dart';
import '../widgets/utils.dart';

class LinkVoterID extends StatefulWidget {
  LinkVoterID({super.key});

  @override
  State<LinkVoterID> createState() => _LinkVoterIDState();
}

class _LinkVoterIDState extends State<LinkVoterID> {
  String status = "";

  final _formKeyLink = GlobalKey<FormState>();

  final TextEditingController _voterIDController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  Future<void> _linkID() async {
    try {
      final CollectionReference _userCollection2 =
          FirebaseFirestore.instance.collection('users');

      await _userCollection2.doc(MyApp.userId).update({
        'voterID': _voterIDController.text.trim(),
        'linked': true
      }).then((value) {
        print('Data updated successfully');
      }).catchError((error) {
        print('Error updating data: $error');
      });
    } catch (e) {
      Utils().toastMsg("Error Occured");
    }
  }

  Future<void> _getbyID() async {
    try {
      // Fetching User's Name
      // Firestore

      final CollectionReference _userCollection =
          FirebaseFirestore.instance.collection('users');

      await _userCollection.doc(MyApp.userId).get().then((docSnapshot) {
        if (docSnapshot.exists) {
          status = docSnapshot.get(FieldPath(const ['status']));
        }
      }).catchError((error) {
        Utils().toastMsg('Error fetching from database'); //Show Toast
      });
    } catch (e) {
      print("Error - ${e}");
    }
  }

  @override
  Widget build(BuildContext context) {
    _getbyID();
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
          "Link Voter ID",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKeyLink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Image(
                  image: NetworkImage(
                      "https://cdn3d.iconscout.com/3d/premium/thumb/link-6073774-4996994.png"),
                  height: 220,
                  width: 220,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Text(
                    "Link Your Voter ID",
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
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                  child: TextFormField(
                    controller: _voterIDController,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Voter ID cannot be empty";
                      }
                      return null;
                    },
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      hintText: "Enter your Voter ID Number",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xe3444444),
                      ),
                      filled: true,
                      fillColor: const Color(0xfffcd798),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(
                        Icons.numbers,
                        color: Color(0xe3444444),
                        size: 22,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                  child: TextFormField(
                    controller: _mobileNoController,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number cannot be empty";
                      }
                      return null;
                    },
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      hintText: "Enter your Mobile Number",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xe3444444),
                      ),
                      filled: true,
                      fillColor: const Color(0xfffcd798),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(
                        Icons.call,
                        color: Color(0xe3444444),
                        size: 22,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          Utils().toastMsg("OTP Sent");
                        },
                        child: const Icon(
                          Icons.send_to_mobile,
                          color: Color(0xe3444444),
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                  child: TextFormField(
                    controller: _otpController,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Valid OTP";
                      }
                      return null;
                    },
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color(0x00ffffff), width: 1),
                      ),
                      hintText: "Enter OTP",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xe3444444),
                      ),
                      filled: true,
                      fillColor: const Color(0xfffcd798),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(
                        Icons.numbers,
                        color: Color(0xe3444444),
                        size: 22,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKeyLink.currentState!.validate()) {
                        _linkID();
                        Navigator.pushReplacementNamed(
                            context, MyRoutes.linkSuccess);
                      }
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
                      "Link Voter ID",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Don't have a Voter ID?",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            (status == "Under Scrutiny" ||
                                    status == "ID Generated" ||
                                    status == "Rejected")
                                ? Navigator.pushNamed(
                                    context, MyRoutes.applySuccess)
                                : Navigator.pushNamed(
                                    context, MyRoutes.applyVoterID);
                          },
                          child: Text(
                            "Apply Now",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xffff9800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

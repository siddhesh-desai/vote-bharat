import 'package:flutter/material.dart';
import 'package:vote_bharat/utils/routes.dart';

class ApplyVoterID extends StatelessWidget {
  const ApplyVoterID({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffea6e17),
        title: const Text(
          "Apply for Voter ID",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 21,
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
      body: SingleChildScrollView(
        child: Align(
          alignment: const Alignment(0.0, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 16, 0, 20),
                  padding: const EdgeInsets.all(8),
                  width: 330,
                  height: 180,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/apply_banner.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name cannot be empty";
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
                      hintText: "Name (As per Aadhar Card)",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff9f9d9d),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(47, 255, 191, 0),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      prefixIcon: const Icon(Icons.person,
                          color: Color(0xffff9800), size: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number cannot be Empty";
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
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff9f9d9d),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(47, 255, 191, 0),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      prefixIcon: const Icon(Icons.call,
                          color: Color(0xffff9800), size: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Upload Adress Proof";
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
                      hintText: "Upload Address Proof",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff9f9d9d),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(47, 255, 191, 0),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      prefixIcon: const Icon(Icons.home_filled,
                          color: Color(0xffff9800), size: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Upload Age Proof";
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
                      hintText: "Upload Age Proof",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff9f9d9d),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(47, 255, 191, 0),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      prefixIcon: const Icon(Icons.insert_drive_file,
                          color: Color(0xffff9800), size: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Upload Identity Proof";
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
                      hintText: "Upload Identity Proof",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff9f9d9d),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(47, 255, 191, 0),
                      isDense: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      prefixIcon: const Icon(Icons.person_pin_sharp,
                          color: Color(0xffff9800), size: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.applySuccess);
                    },
                    color: const Color(0xff128807),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side:
                          const BorderSide(color: Color(0xff7cfd34), width: 0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 135),
                    textColor: const Color(0xfffdfdfd),
                    height: 40,
                    minWidth: 140,
                    child: const Text(
                      "Apply",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
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

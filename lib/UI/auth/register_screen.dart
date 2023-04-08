import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vote_bharat/main.dart';

import '../../utils/routes.dart';
import '../../widgets/utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKeyRegister = GlobalKey<FormState>();

  //for loading
  bool isLoading = false; //For Spinner

  //Text Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  //For Password Visibility
  bool _obscureText = true; // initialize obscureText to true

  //Firebase Auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Firestore
  final CollectionReference _newcollection =
      FirebaseFirestore.instance.collection('users');

  //Register Function
  Future<void> _signup() async {
    try {
      // Loading Begins
      setState(() {
        isLoading = true;
      });

      // Firebase Authentication
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passController.text.trim(),
      );

      //Adding user to Firestore
      User? user = userCredential.user;
      if (user != null) {
        // Save user data to Firestore
        await _newcollection.doc(user.uid).set({
          'name': _nameController.text.trim(),
          'email': _emailController.text.trim(),
        });
        MyApp.email = _emailController.text.trim();
        MyApp.name = _nameController.text.trim();
        MyApp.userId = user.uid;

        // Navigate to home page on successful sign up
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
      }
    } on FirebaseAuthException catch (e) {
      //If Error
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
        Utils().toastMsg('The password provided is too weak.'); //Show Toast
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        Utils().toastMsg(
            'The account already exists for that email.'); //Show Toast
      }
    }

    //Stop Loading
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Align(
        alignment: Alignment.center,
        child: isLoading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Image(
                      image: AssetImage("assets/images/loginIcon.jpeg"),
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKeyRegister,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Image(
                            image: AssetImage("assets/images/app_logo.png"),
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Create New Account",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 26,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: _nameController,
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
                                hintText: "Name",
                                hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff9f9d9d),
                                ),
                                filled: true,
                                fillColor: const Color(0x21ffc107),
                                isDense: false,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                prefixIcon: const Icon(Icons.account_box,
                                    color: Color(0xffff9800), size: 22),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _emailController,
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email Address cannot be empty";
                                } else if (!(value.contains('@') &&
                                    value.contains('.'))) {
                                  return "Invalid Email";
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
                                hintText: "Email Address",
                                hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff9f9d9d),
                                ),
                                filled: true,
                                fillColor: const Color(0x21ffc107),
                                isDense: false,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                prefixIcon: const Icon(Icons.mail,
                                    color: Color(0xffff9800), size: 22),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _passController,
                              obscureText: _obscureText,
                              validator: (value) {
                                if (value!.length < 8) {
                                  return "Password must be of atleast 8 Characters";
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
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff9f9d9d),
                                ),
                                filled: true,
                                fillColor: const Color(0x21ffc107),
                                isDense: false,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                prefixIcon: const Icon(Icons.lock,
                                    color: Color(0xffff9800), size: 22),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscureText =
                                          !_obscureText; // toggle the value of _obscureText on button press
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xffff9800),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 8),
                            child: MaterialButton(
                              onPressed: () async {
                                {
                                  if (_formKeyRegister.currentState!
                                      .validate()) {
                                    _signup();
                                  }
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
                                "Register",
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
                                  "Have an account?",
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
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacementNamed(
                                          context, MyRoutes.loginRoute);
                                    },
                                    child: const Text(
                                      "Sign In",
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
              ),
      ),
    );
  }
}

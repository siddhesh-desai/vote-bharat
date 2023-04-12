import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../utils/routes.dart';
import '../../widgets/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKeyLogin = GlobalKey<FormState>();

  //Text Controllers of Form
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  //For Loading Spinner
  bool _isLoading = false;

  //For Password Visibility
  bool _obscureText = true; // initialize obscureText to true

  //Firebase Authentication
  Future<void> _signIn() async {
    //Loading On
    setState(() {
      _isLoading = true;
    });

    try {
      //Signing in with Firebase
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passController.text.trim(),
      );

      // Update global user data
      final user = userCredential.user;
      MyApp.userId = user!.uid;
      MyApp.email = user.email ?? '';

      //Fetching User's Name
      //Firestore
      final CollectionReference _userCollection =
          FirebaseFirestore.instance.collection('users');

      await _userCollection.doc(MyApp.userId).get().then((docSnapshot) {
        if (docSnapshot.exists) {
          MyApp.name = docSnapshot.get(FieldPath(const ['name']));
        }
      }).catchError((error) {
        Utils().toastMsg('Error fetching from database'); //Show Toast
      });

      // Navigate to home page
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Utils().toastMsg('No user found for that email.'); //Show Toast
      } else if (e.code == 'wrong-password') {
        Utils().toastMsg('Wrong password provided for that user.'); //Show Toast
      } else {
        Utils().toastMsg('Error signing in: ${e.message}'); //Show Toast
      }
    } catch (e) {
      Utils().toastMsg('Error signing in: $e'); //Show Toast
    } finally {
      //Loading Off
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Align(
        alignment: Alignment.center,
        child: _isLoading
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
                      key: _formKeyLogin,
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
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 8),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Welcome Back!",
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
                                  if (_formKeyLogin.currentState!.validate()) {
                                    _signIn();
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
                                "Log In",
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
                                  "Don't have an account?",
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
                                      "Create",
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

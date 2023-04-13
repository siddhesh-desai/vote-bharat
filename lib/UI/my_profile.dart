import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
        // backgroundColor: const Color(0xffff9800),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Menu Icon',
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 16),
                child: Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black87,
                    size: 150,
                  ),
                ),
              ),
              const Text(
                "Sanket Disale",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontSize: 23,
                  color: Color(0xff000000),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text(
                      "Voter ID : SZH8390254",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color.fromARGB(255, 80, 80, 80),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                child: Text(
                  "Constituency : Pandharpur - MAH",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color.fromARGB(255, 80, 80, 80),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 206, 199, 195),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              "40 🧑",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                "Referals",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 4,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xff3a57e8),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: const Color(0x4d9e9e9e), width: 1),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              "100 🏆",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                "Points",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 0),
                child: MaterialButton(
                  onPressed: () {},
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
                    "View My QR Code",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text(
                  "My Badges 📛",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      padding: const EdgeInsets.all(0),
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/4205/4205953.png"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/4205/4205953.png"),
                            fit: BoxFit.cover),
                        // color: Color(0xd854256f),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/4205/4205953.png"),
                            fit: BoxFit.cover),
                        // color: Color(0xd854256f),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

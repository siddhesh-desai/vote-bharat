import 'package:flutter/material.dart';
import 'package:vote_bharat/main.dart';
import 'package:vote_bharat/utils/routes.dart';
import 'package:vote_bharat/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffea6e17),
        // backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Vote Bharat!",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.notifications_rounded),
              tooltip: 'Notifications',
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.electionUpdates);
              }),
          IconButton(
            icon: const Icon(Icons.person_pin),
            tooltip: 'My Profile',
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.myProfile);
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              // color: Color.fromARGB(255, 255, 187, 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner02.jpg'),
                    fit: BoxFit.cover),
                // color: Color(0xd854256f),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 0, 0),
                    child: Text(
                      "Hello ${MyApp.name},",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xff838282),
                        // color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
                    child: Text(
                      "Welcome to Vote Bharat!",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 23,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        margin: const EdgeInsets.all(0),
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 227, 184),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              color: const Color(0xffff9800), width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Text(
                                      "Voter ID not linked yet!",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.linkVoterID);
                                },
                                color: const Color.fromARGB(255, 77, 148, 88),
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                textColor: const Color(0xffffffff),
                                height: 40,
                                child: const Text(
                                  "Link Now",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                "Updates 📣",
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
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 160,
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.electionUpdates);
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      padding: const EdgeInsets.all(8),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/banner01.jpg'),
                            fit: BoxFit.cover),
                        // color: Color(0xd854256f),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    padding: const EdgeInsets.all(8),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.postimg.cc/ydJq53PT/Poster3.png"),
                          fit: BoxFit.cover),
                      // color: Color(0xd854256f),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.socialNetworkRoute);
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      padding: const EdgeInsets.all(8),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://i.postimg.cc/yxf6NJPX/Devraj-Babar-3.png"),
                            fit: BoxFit.cover),
                        // color: Color(0xd854256f),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text(
                "Explore 🚀",
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
            GridView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.socialNetworkRoute);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                              "https://www.boell.de/sites/default/files/styles/var_larger/public/uploads/2014/04/indien-wahlen-aussenpolitik_0.jpg?itok=99bSUsQJ"),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Social Network",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.electionUpdates);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                            "https://www.oracleglobe.com/wp-content/uploads/2019/09/General-Elections-2019-1019x573.jpg",
                          ),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Election Updates",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 17,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.voterEducation);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                              "https://th.bing.com/th/id/OIP.qWGveec8M82rItJpxVKuXwAAAA?pid=ImgDet&rs=1"),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Education",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.leaderboardRoute);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                              "https://media.istockphoto.com/photos/golden-trophy-with-blue-sky-background-with-copy-space-as-winner-or-picture-id803885084?k=6&m=803885084&s=612x612&w=0&h=RTCsfd1FU8ou2PmREbJpTVcBS1Ef1iSsbjTCyBe0M0w="),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Leaderboard",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.referalRoute);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                              "https://www.pngall.com/wp-content/uploads/2016/04/Coins-PNG.png"),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Rewards",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.electionDayRoute);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image(
                          image: const NetworkImage(
                              "https://images.livemint.com/img/2020/08/22/600x338/b4a7e364-e3bd-11ea-8bff-6706f195ca7a_1598058291151_1598060234694.jpg"),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0x6e000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Text(
                        "Election Day",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Text(
                      "Refer and Earn 💸",
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
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.referalRoute);
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 0, 20),
                padding: const EdgeInsets.all(8),
                width: 330,
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/refer_banner.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

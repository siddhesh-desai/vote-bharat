import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vote_bharat/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final PageController pageController;
  ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBtmAppBr = false;
        setState(() {});
      } else {
        showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;

  //Header Images
  List<String> images = [
    "https://i.postimg.cc/CLhBqFL4/Devraj-Babar-2.png",
    "https://i.postimg.cc/yxf6NJPX/Devraj-Babar-3.png",
    "https://i.postimg.cc/ydJq53PT/Poster3.png",
    // "https://pbs.twimg.com/media/FgP1VubUoAAk7-R.jpg",
    // "https://pbs.twimg.com/media/FgaHwhMVUAILFNj.png",
    // "https://pbs.twimg.com/media/FgP1VubUoAAk7-R.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffea6e17),
        // backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Social Network",
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
              Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
            }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListTile(
                  onTap: () {},
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  selectedTileColor: const Color.fromRGBO(235, 152, 78, 1),
                  title: Text(
                    "Let's Celebrate together!",
                    style: Theme.of(context).textTheme.subtitle1!.merge(
                          const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                  ),
                  subtitle: Text(
                    "Share your voting pics here, feel proud!",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .merge(const TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    pageNo = index;
                    setState(() {});
                  },
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return child!;
                      },
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text("Hello you tapped at ${index + 1} "),
                            ),
                          );
                        },
                        onPanDown: (d) {
                          carasouelTmer?.cancel();
                          carasouelTmer = null;
                        },
                        onPanCancel: () {
                          carasouelTmer = getTimer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0)),
                            child: Image.network(
                              images[index],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.circle,
                        size: 12.0,
                        color: pageNo == index
                            ? Color.fromRGBO(14, 102, 85, 1)
                            : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(40, 180, 99, 1),
          onPressed: _launchURL,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'fb://inspirationscamera/?effectID=264541029236297&reason=web_link_redirect_button&cryptoHash=ODAzYTBmZWMxNmM1ZjNlY2FhYjI2ODIxZDI5ZmQ0MzQ%3D';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

class FabExt extends StatelessWidget {
  const FabExt({
    Key? key,
    required this.showFabTitle,
  }) : super(key: key);

  final bool showFabTitle;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: AnimatedContainer(
        duration: const Duration(seconds: 2),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(CupertinoIcons.cart),
            SizedBox(width: showFabTitle ? 12.0 : 0),
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: showFabTitle ? const Text("Go to cart") : const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "images":
          "https://static-koimoi.akamaized.net/wp-content/new-galleries/2014/04/celebs-who-voted-02.jpg"
    },
    {
      "images":
          "https://th.bing.com/th/id/R.07a8e48ccc7b8ac261c4ffa3e9c0e1ef?rik=H3azdlYmaHKRFA&riu=http%3a%2f%2fmedia2.intoday.in%2findiatoday%2fimages%2fPhoto_gallery%2fnaresh-prabhdesai_041014120144.jpg&ehk=HFXKjfcw8nl2QVHirLXMGH4KqWBeLsWxTVfTRWb1GMY%3d&risl=&pid=ImgRaw&r=0"
    },
    {
      "images":
          "https://images.livemint.com/img/2019/05/02/600x338/AFP_1G09DX_1556800188679_1556800199200.jpg"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.FMRaOK8NcLbe6h0EyKs5ywHaJ4?pid=ImgDet&rs=1"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.FMRaOK8NcLbe6h0EyKs5ywHaJ4?pid=ImgDet&rs=1"
    },
    {
      "images":
          "https://static-koimoi.akamaized.net/wp-content/new-galleries/2014/04/celebs-who-voted-05.jpg"
    },
    {
      "images":
          "https://static-koimoi.akamaized.net/wp-content/new-galleries/2014/04/celebs-who-voted-06.jpg"
    },
    {
      "images":
          "https://th.bing.com/th/id/R.036a481a7cb94823bf6a5722ebb36e07?rik=XgbtnjD4f5QHAA&riu=http%3a%2f%2fmedia2.intoday.in%2findiatoday%2fimages%2fPhoto_gallery%2fjayraj_neelegar_041714030601.jpg&ehk=MYqKKjPiqhAsb6eAo9yKxJY3Nq3qeiU0TzrfPc%2b7cYU%3d&risl=&pid=ImgRaw&r=0"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 200,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.amberAccent.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0)),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

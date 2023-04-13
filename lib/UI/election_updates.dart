import 'package:flutter/material.dart';

class ElectionUpdates extends StatelessWidget {
  const ElectionUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffea6e17),
        // backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Election Updates",
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
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Card(
              margin: const EdgeInsets.all(4),
              // color: Colors.white,
              color: Color.fromARGB(255, 255, 197, 121),
              shadowColor: const Color(0xff000000),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image(
                            image: const NetworkImage(
                                "https://www.hindustantimes.com/ht-img/img/2023/04/12/550x309/BJP-leaders-Dharmendra-Pradhan-and-Mansukh-Mandavi_1681270223595_1681270223595_1681270276269_1681270276269.jpg"),
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Karnataka assembly elections: BJP's first list has 8 women, 52 new faces, 8 social activists",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 152, 83),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0)),
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Text(
                      "Read this Article",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Card(
              margin: const EdgeInsets.all(4),
              // color: Colors.white,
              color: Color.fromARGB(255, 255, 197, 121),
              shadowColor: const Color(0xff000000),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image(
                            image: const NetworkImage(
                                "https://englishtribuneimages.blob.core.windows.net/gallary-content/2023/4/2023_4\$largeimg_553459981.JPG"),
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Saffron flag will be unfurled all over Maharashtra in 2024: CM Eknath Shinde in Ayodhya",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 152, 83),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0)),
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Text(
                      "Read this Article",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Card(
              margin: const EdgeInsets.all(4),
              // color: Colors.white,
              color: Color.fromARGB(255, 255, 197, 121),
              shadowColor: const Color(0xff000000),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image(
                            image: const NetworkImage(
                                "https://images.news18.com/ibnlive/uploads/2023/04/karnataka-elections-nikhil-katti-son-of-ex-minister-umesh-katti-gets-bjp-ticket-from-hukkeri-16812755003x2.png?impolicy=website&width=510&height=356"),
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Karnataka Elections: Nikhil Katti, Son Of Late Umesh Katti, Gets BJP Ticket From Hukkeri",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 152, 83),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0)),
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Text(
                      "Read this Article",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

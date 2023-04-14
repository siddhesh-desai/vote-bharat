import 'package:flutter/material.dart';

class VoterEducation extends StatelessWidget {
  const VoterEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: const Color(0xffea6e17),
        title: const Text(
          "Voter Education",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 0, 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: const [
                  Text(
                    "Learn Courses and Earn Points!",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(5),
            width: 330,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xff0EA029),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Card(
              margin: const EdgeInsets.all(4.0),
              color: const Color(0xff0EA029),
              shadowColor: Colors.black54,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: const BorderSide(
                  color: Colors.black54,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://plnami.blob.core.windows.net/media/2014/08/democracy.jpg"),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Democracy",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Align(
              alignment: Alignment.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(5),
            width: 330,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xff0EA029),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Card(
              margin: const EdgeInsets.all(4.0),
              color: const Color(0xff0EA029),
              shadowColor: Colors.black54,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: const BorderSide(
                  color: Colors.black54,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://plnami.blob.core.windows.net/media/2014/08/democracy.jpg"),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "EVMs",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Align(
              alignment: Alignment.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(5),
            width: 330,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xff0EA029),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Card(
              margin: const EdgeInsets.all(4.0),
              color: const Color(0xff0EA029),
              shadowColor: Colors.black54,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: const BorderSide(
                  color: Colors.black54,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://plnami.blob.core.windows.net/media/2014/08/democracy.jpg"),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Awareness",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Align(
              alignment: Alignment.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(5),
            width: 330,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xff0EA029),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Card(
              margin: const EdgeInsets.all(4.0),
              color: const Color(0xff0EA029),
              shadowColor: Colors.black54,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: const BorderSide(
                  color: Colors.black54,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://plnami.blob.core.windows.net/media/2014/08/democracy.jpg"),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Parliament",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

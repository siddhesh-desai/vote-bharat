import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
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
          "Article Title",
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
      ),
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                child: Image(
                  image: NetworkImage("https://picsum.photos/250?image=9"),
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Latest News Title from your Region",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 10, 8, 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "21/02/2023",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a massa in dolor suscipit sagittis at ut dolor. Aliquam eu diam dui. Proin a mauris sed tellus sagittis sodales nec tempus est. Vestibulum sed aliquam diam, et mattis enim. Duis feugiat nunc diam, in eleifend arcu molestie eu. Quisque tempus rhoncus sapien, ut condimentum mauris interdum et. Mauris non sem in ipsum pulvinar sodales sed non turpis. Integer tempor rutrum porta. Praesent aliquam feugiat suscipit.  Sed efficitur congue finibus. Nunc pulvinar vehicula vestibulum. Vivamus in auctor justo. Aenean tempor mauris non magna malesuada fringilla. Donec sit amet arcu leo. Aliquam nec enim efficitur, tincidunt neque sed, posuere ante. Etiam dictum tellus urna, in aliquam massa tristique ut. Sed vel suscipit urna, at egestas tellus. Aenean rhoncus, metus ac imperdiet euismod, diam justo tincidunt augue, ut bibendum lorem ipsum vitae nulla. Quisque nisi mauris, ornare ac ante in, tincidunt volutpat nulla. Mauris eu feugiat quam. Sed in magna sit amet ante euismod pellentesque id quis nulla.",
                  textAlign: TextAlign.justify,
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:food_app/catalog.dart';
//import 'package:food_app/drawer.dart';
//import 'package:food_app/item_widget.dart';
import 'package:app_kushaan/profile_screen.dart';
//import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  final List<Map> articles = [
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "Does Dry is January Actually Improve Your Health?",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "Does Dry is January Actually Improve Your Health?",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App"),
        automaticallyImplyLeading: false,
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            tooltip: "Go to the Profile Screen",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: ListView.builder(
        //   itemCount: dummyList.length,
        //   itemBuilder: (context, index) {
        //     return ItemWidget(
        //       item: dummyList[index],
        //     );
        //   },
        // ),
        child:
        ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return _buildArticleItem(index);
          },
          separatorBuilder: (context, index) =>
          const SizedBox(height: 16.0),
        ),
      ),
      //drawer: MyDrawer(),
    );
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    // final String sample = 'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media';
    return Container(
      color: Colors.lightBlue,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: Colors.lightBlue,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: Image.asset(
                    "assets/intro3.png",
                    //fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: TextStyle(fontSize: 16.0)),
                            WidgetSpan(
                              child: const SizedBox(width: 20.0),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

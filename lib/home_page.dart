// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/1.jpeg",
    "images/2.jpeg",
    "images/3.jpeg",
    "images/4.jpeg",
    "images/5.jpeg",
    "images/6.jpeg",
    "images/7.jpeg",
    "images/8.jpeg",
  ];
  List<String> postImages = [
    "images/Post_1.png",
    "images/Post_2.png",
    "images/Post_3.png",
    "images/Post_4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Instagram_Title.png",
          height: 60,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/story.jpg"),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                      ),
                      Text(
                        "Profil Name",
                        style: TextStyle(fontSize: 12, color: Colors.black87),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                  4,
                  (index) => Column(
                        children: [
                          //HEADER POST
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage("images/story.jpg"),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(profileImages[index]),
                                  ),
                                ),
                              ),
                              Text("Profil Name"),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                          //IMAGE POST
                          Image.asset(postImages[index]),
                          //FOOTER POST
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                              ),
                              
                            ],
                          )
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}

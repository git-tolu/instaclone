import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:instaclone/status_page.dart';
import 'utils/appLayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/ariana.jfif",
    "images/bugattiman.jfif",
    "images/extopg.jfif",
    "images/freeg.jfif",
    "images/selena.jfif",
    "images/taylor.jpg",
    "images/zendaya.jfif",
    "images/topgun.jfif",
  ];
  List<String> postImages = [
    "images/ariana.jfif",
    "images/bugattiman.jfif",
    "images/extopg.jfif",
    "images/freeg.jfif",
    "images/selena.jfif",
    "images/taylor.jpg",
    "images/zendaya.jfif",
    "images/topgun.jfif",
  ];
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          "images/insta_text.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const StatusPage();
                                },
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor:
                                const Color.fromRGBO(203, 71, 101, 1),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Profile Name",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            // posts
            Column(
              children: List.generate(
                8,
                (index) => Column(
                  children: [
                    // HEADER POST
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const StatusPage();
                                },
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor:
                                  const Color.fromRGBO(203, 71, 101, 1),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: const [
                            Text(
                              "Profile Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Additional Info",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        DropdownButton<String>(
                          items: const [
                            DropdownMenuItem(
                              value: 'item1',
                              child: Text('Item 1'),
                            ),
                            DropdownMenuItem(
                              value: 'item2',
                              child: Text('Item 2'),
                            ),
                            DropdownMenuItem(
                              value: 'item3',
                              child: Text('Item 3'),
                            ),
                          ],
                          onChanged: (value) {
                            print(value);
                          },
                          hint: const Text('Select an item'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    // Content post
                    Container(
                      height: AppLayout.getScreenHeight() / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(postImages[index]),
                        ),
                      ),
                    ),
                    // footer
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              colorIndex = 1;
                            });
                          },
                          icon: const Icon(Icons.favorite_border),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              colorIndex = 1;
                            });
                          },
                          icon: const Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              colorIndex = 1;
                            });
                          },
                          icon: const Icon(Icons.send_rounded),
                          color: Colors.white,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              colorIndex = 1;
                            });
                          },
                          icon: const Icon(Icons.bookmark_border),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:instaclone/status_page.dart';
import 'utils/appLayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/selenagomez.jpg",
    "images/selenapost.jpg",
    "images/gomezpost.jpg",
    "images/sadie1.jpg",
    "images/sadie2.jpg",
    "images/sadie3.jpg",
    "images/araina2.jpg",
    "images/ariana1.jpg",
    "images/kehlani.jpg",
    "images/kehlani2.jpg",
    "images/riri.jpg",
    "images/riri2.jpg",
    "images/ol1.jpg",
    "images/taylor.jpg",
    "images/justinskye.jpg",
    "images/florencepugh.jpg",
    "images/fpugh1.jpg",
    "images/jenniferlawrence.jpg",
  ];
  List<String> postImages = [
    "images/selenagomez.jpg",
    "images/selenapost.jpg",
    "images/gomezpost.jpg",
    "images/sadie1.jpg",
    "images/sadie2.jpg",
    "images/sadie3.jpg",
    "images/araina2.jpg",
    "images/ariana1.jpg",
    "images/kehlani.jpg",
    "images/kehlani2.jpg",
    "images/riri.jpg",
    "images/riri2.jpg",
    "images/ol1.jpg",
    "images/taylor.jpg",
    "images/justinskye.jpg",
    "images/florencepugh.jpg",
    "images/fpugh1.jpg",
    "images/jenniferlawrence.jpg",
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
                  17,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (BuildContext context) {
                            //       return const StatusPage();
                            //     },
                            //   ),
                            // );
                            showModalBottomSheet<void>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: AppLayout.getScreenHeight(),
                                  color: Colors.black,
                                  padding: const EdgeInsets.only(top: 30,),
                                  child: const StatusPage(),
                                );
                              },
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
                17,
                (index) => Column(
                  children: [
                    // HEADER POST
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (BuildContext context) {
                            //       return const StatusPage();
                            //     },
                            //   ),
                            // );
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: AppLayout.getScreenHeight(),
                                  color: Colors.black,
                                  padding: const EdgeInsets.all(15),
                                  child: const StatusPage(),
                                );
                              },
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
                        IconButton(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: AppLayout.GetHeight(500),
                                  color: Colors.black,
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: AppLayout.GetWidth(80),
                                        child: const Divider(
                                          color: Color.fromARGB(
                                              113, 247, 244, 244),
                                          thickness: 10,
                                        ),
                                      ),
                                      const Gap(15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Center(
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      113, 247, 244, 244),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: IconButton(
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  icon: const Icon(
                                                    Icons.share,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      113, 247, 244, 244),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: IconButton(
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  icon: const Icon(
                                                    Icons.link_rounded,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      113, 247, 244, 244),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: IconButton(
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  icon: const Icon(
                                                    Icons.bookmark_border,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      113, 247, 244, 244),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: IconButton(
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  icon: const Icon(
                                                    Icons.add_link_rounded,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      113, 247, 244, 244),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.black,
                                                child: IconButton(
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .qr_code_scanner_rounded,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(15),
                                      const Divider(
                                        color:
                                            Color.fromARGB(113, 247, 244, 244),
                                      ),
                                      const Gap(15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Add To Favourite',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.add_link,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Unfollow',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(25),
                                      const Divider(
                                        color:
                                            Color.fromARGB(113, 247, 244, 244),
                                      ),
                                      const Gap(25),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.abc_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Manage Captions',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(25),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Why you're seeing this post",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(25),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.remove_red_eye,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Hide",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(25),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.report_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Report",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Gap(25),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
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

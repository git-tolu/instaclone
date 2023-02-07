import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instaclone/utils/appLayout.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        // ),
        title: Row(
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundColor: Color.fromRGBO(203, 71, 101, 1),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("images/taylor.jpg"),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: const [
                Text(
                  "Profile Name",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Profile Name",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              print("action");
            },
          ),
        ],
      ),
      body: Container(
        height: AppLayout.getScreenHeight(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/taylor.jpg"),
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instaclone/utils/appLayout.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "IGTV",
      "Travel",
      "Architecture",
      "Decor",
      "Style",
      "Food",
      "Art",
      "Beauty",
      "DIY",
      "Music",
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
      "images/ariana.jfif",
      "images/bugattiman.jfif",
      "images/extopg.jfif",
      "images/freeg.jfif",
      "images/selena.jfif",
      "images/taylor.jpg",
      "images/zendaya.jfif",
      "images/topgun.jfif",
      "images/ariana.jfif",
      "images/bugattiman.jfif",
      "images/extopg.jfif",
      "images/freeg.jfif",
      "images/selena.jfif",
      "images/taylor.jpg",
      "images/zendaya.jfif",
      "images/topgun.jfif",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.white,),
                hintText: "search",
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                contentPadding: const EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: const Color.fromARGB(255, 78, 76, 76),
                filled: true,
              ),
            ),
            // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1.0,
              mainAxisExtent: 230.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: AppLayout.GetHeight(300),
                  alignment: Alignment.center,
                  // color: Colors.teal,
                  child: Container(
                    height: AppLayout.GetHeight(300),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(postImages[index]),
                      ),
                    ),
                  ),
                );
              },
              childCount: 24,
            ),
          ),
        ],
      ),
    );
  }
}

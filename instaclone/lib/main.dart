import 'package:flutter/material.dart';
import 'package:instaclone/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentPage == 0
                    ? const Color.fromRGBO(203, 71, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: currentPage == 1
                    ? const Color.fromRGBO(203, 71, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ondemand_video,
                color: currentPage == 2
                    ? const Color.fromRGBO(203, 71, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.card_travel,
                color: currentPage == 3
                    ? const Color.fromRGBO(203, 71, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: currentPage == 4
                    ? const Color.fromRGBO(203, 71, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

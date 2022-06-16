import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/pages/creation_page.dart';
import 'package:flutter_codigo5_youapp/pages/home_page.dart';
import 'package:flutter_codigo5_youapp/pages/shorts_page.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int currentPage = 0;

  List<Widget> _pages = [
    HomePage(),
    ShortPage(),
    CreatePage(tipo: "Jean Bartra ", time: 0.555),
    Center(
      child: Text("Page 4"),
    ),
    Center(
      child: Text("Page 5"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color(0xff241E28),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        backgroundColor: kBrandPrimaryColor,
        selectedFontSize: 12.0,
        unselectedItemColor: Colors.white70,
        unselectedFontSize: 12.0,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          currentPage = value;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: const Icon(
                Icons.add_circle_outline,
                size: 30.0,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

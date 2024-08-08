import 'package:flutter/material.dart';
import 'package:islami/moduls/hadith/hadith_view.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:islami/moduls/radio/raido_view.dart';
import 'package:islami/moduls/sebha/sebha_view.dart';
import 'package:islami/moduls/settings/settings_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIdx = 0;
  List<Widget> screensList = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "إسلامي",
          ),
          centerTitle: true,
        ),
        body: screensList[selectedIdx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIdx,
          onTap: (index) {
            setState(() {
              selectedIdx = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran.png")),
                label: "quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/hadith.png")),
                label: "hadith"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
                label: "radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
        ),
      ),
    );
  }
}

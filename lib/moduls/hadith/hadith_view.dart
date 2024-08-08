import 'package:flutter/cupertino.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hadith",
        style: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

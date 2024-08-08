import 'package:flutter/cupertino.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Quran",
        style: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

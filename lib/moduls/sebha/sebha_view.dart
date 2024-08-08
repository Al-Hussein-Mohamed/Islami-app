import 'package:flutter/cupertino.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Sebha",
        style: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

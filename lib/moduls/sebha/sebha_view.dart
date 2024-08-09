import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

int counter = 0;

class _SebhaViewState extends State<SebhaView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 37,
                child: Image.asset(
                  "assets/icons/sebha_header.png",
                  scale: 2.8,
                ),
              ),
              Positioned(
                top: 0,
                child: Image.asset(
                  "assets/icons/sebha_head.png",
                  scale: 2.8,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: 80,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFB7935F).withOpacity(0.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            counter.toString(),
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                onPressed: onPressed,
                child: Text(
                  "سبحان الله",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: reset,
                  icon: const Icon(
                    Icons.refresh_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void onPressed() {
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }
}

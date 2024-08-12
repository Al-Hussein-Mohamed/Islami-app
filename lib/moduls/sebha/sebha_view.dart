import 'package:flutter/material.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

int counter = 0;

class _SebhaViewState extends State<SebhaView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var textColor = provider.isDark() ? const Color(0xFF141A2E) : Colors.white;
    double screenHeight = mediaQuery.size.height;
    double screenWidth = mediaQuery.size.width;

    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.04,
        ),
        SizedBox(
          height: screenHeight * 0.33,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: screenHeight * 0.025,
                child: Image.asset(
                  "assets/icons/sebha_header.png",
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.6,
                ),
              ),
              Positioned(
                top: 0,
                left: screenWidth * .47,
                child: Image.asset(
                  "assets/icons/sebha_head.png",
                  scale: 2.8,
                  width: screenWidth * 0.15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.022,
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          height: screenHeight * 0.04,
        ),
        Container(
          width: 80,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: theme.primaryColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            counter.toString(),
            style: theme.textTheme.bodyLarge?.copyWith(
              color: textColor,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.04,
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
                    color: textColor,
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
                  icon: Icon(
                    Icons.refresh_rounded,
                    color: textColor,
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

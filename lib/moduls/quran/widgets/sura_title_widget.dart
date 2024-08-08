import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraVerses;

  const SuraTitleWidget(
      {super.key, required this.suraName, required this.suraVerses});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraVerses,
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )),
        const SizedBox(
          height: 37,
          child: VerticalDivider(),
        ),
        Expanded(
            child: Text(
          suraName,
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )),
      ],
    );
  }
}

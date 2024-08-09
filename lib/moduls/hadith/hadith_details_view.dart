import 'package:flutter/material.dart';

List<String> hadithList = [];

class HadithDetailsView extends StatelessWidget {
  const HadithDetailsView({super.key});

  static const String routeName = "hadith_details_view";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as String;
    var theme = Theme.of(context);
    int idx = data.indexOf('\n');
    print(data.substring(0, idx));
    print(data.substring(idx + 1));
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
            style: theme.textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: Container(
          margin:
              const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 80),
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 80),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            children: [
              Text(
                data.substring(0, idx),
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    data.substring(idx + 1),
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

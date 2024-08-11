import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quran_details";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var lang = AppLocalizations.of(context)!;
    if (verses.isEmpty) {
      loadQuranData(data.surNumber);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang.islami,
            style: theme.textTheme.titleLarge?.copyWith(
              color: provider.isDark() ? Colors.white : Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin:
              const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 80),
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 80),
          decoration: BoxDecoration(
            color: Color(provider.isDark() ? 0xFF141A2E : 0xFFF8F8F8)
                .withOpacity(.75),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة ${data.surName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: Color(provider.isDark() ? 0xFFFACC1D : 0xFF000000),
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, idx) => Text(
                    "{${idx + 1}} ${verses[idx]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: verses.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadQuranData(String suraNumber) async {
    String content =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    verses = content.split("\n");
    if (verses[verses.length - 1].isEmpty) verses.removeLast();
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:provider/provider.dart';

List<String> hadithList = [];

class HadithDetailsView extends StatelessWidget {
  const HadithDetailsView({super.key});

  static const String routeName = "hadith_details_view";

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;
    var data = ModalRoute.of(context)?.settings.arguments as String;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);

    int idx = data.indexOf('\n');
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

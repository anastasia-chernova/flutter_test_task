import 'package:app_theme/app_theme.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';

import 'package:tacks/src/ui/tacks_form.dart';

@RoutePage<String>()
class TacksScreen extends StatelessWidget {
  const TacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppWidgetTheme.primaryBackgroundColor,
      navigationBar: AppNavigationBar(
        backgroundColor: AppWidgetTheme.primaryBackgroundColor,
        title: FlutterI18n.translate(context, 'tacksScreen.title'),
        actions: <Widget>[
          CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 16),
            onPressed: () {},
            child: AppIconTheme.chat(color: AppIconTheme.primaryColor),
          ),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 16),
            onPressed: () {},
            child: AppIconTheme.notification(color: AppIconTheme.primaryColor),
          ),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 16),
            onPressed: () {},
            child: AppIconTheme.menu(color: AppIconTheme.primaryColor),
          ),
        ],
      ),
      child: const TacksForm(),
    );
  }
}

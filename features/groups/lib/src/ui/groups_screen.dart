import 'package:app_theme/app_theme.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';

import 'package:groups/src/ui/groups_form.dart';
import 'package:navigation/navigation.dart';

@RoutePage<String>()
class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppWidgetTheme.primaryBackgroundColor,
      navigationBar: AppNavigationBar(
        backgroundColor: AppWidgetTheme.primaryBackgroundColor,
        title: FlutterI18n.translate(context, 'groupsScreen.title'),
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
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: FocusScope.of(context).unfocus,
        child: const GroupsForm(),
      ),
    );
  }
}

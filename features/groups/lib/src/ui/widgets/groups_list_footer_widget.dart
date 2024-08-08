import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class GroupsListFooterWidget extends StatelessWidget {
  const GroupsListFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: AppButton(
            label: FlutterI18n.translate(
              context,
              'groupsScreen.createNewGroupButton',
            ),
            type: ButtonType.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AppButton(
            label: FlutterI18n.translate(
              context,
              'groupsScreen.myInvitationsButton',
            ),
            type: ButtonType.secondary,
            backgroundColor: AppWidgetTheme.primaryBackgroundColor,
          ),
        ),
      ],
    );
  }
}

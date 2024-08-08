import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class ManageGroupButton extends StatelessWidget {
  const ManageGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: FlutterI18n.translate(context, 'groupsScreen.manageGroupButton'),
      type: ButtonType.secondary,
      textColor: AppTextTheme.manageActionColor,
      borderColor: AppWidgetTheme.buttonAdditionBorderColor,
      withShadow: false,
    );
  }
}

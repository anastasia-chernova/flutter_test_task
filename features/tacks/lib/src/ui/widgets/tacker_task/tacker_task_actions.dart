import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class TackerTaskActions extends StatelessWidget {
  final TackerTaskStatus status;

  const TackerTaskActions({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case TackerTaskStatus.created:
        return AppButton(
          label: FlutterI18n.translate(context, 'general.track'),
        );
      case TackerTaskStatus.accepted:
        return AppButton(
          label: FlutterI18n.translate(
            context,
            'tacksScreen.chooseRunnerButton',
          ),
          icon: AppIconTheme.person,
        );
      case TackerTaskStatus.preparing:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.message'),
                type: ButtonType.secondary,
                withShadow: false,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.track'),
              ),
            ),
          ],
        );
      case TackerTaskStatus.completing:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.message'),
                type: ButtonType.secondary,
                withShadow: false,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.track'),
              ),
            ),
          ],
        );
      case TackerTaskStatus.finishingUp:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.message'),
                type: ButtonType.secondary,
                withShadow: false,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.track'),
              ),
            ),
          ],
        );
      case TackerTaskStatus.complete:
        return AppButton(
          label: FlutterI18n.translate(context, 'general.review'),
          icon: AppIconTheme.edit,
        );
    }
  }
}

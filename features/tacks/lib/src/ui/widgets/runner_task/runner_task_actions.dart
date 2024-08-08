import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/widgets/runner_task/time_counter_widget.dart';
import 'package:utilities/utilities.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class RunnerTaskActions extends StatelessWidget {
  final RunnerTaskStatus status;
  final RunnerTaskCounterOffer? counterOffer;

  const RunnerTaskActions({
    super.key,
    required this.status,
    this.counterOffer,
  });

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case RunnerTaskStatus.pending:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AppButton(
                label: FlutterI18n.translate(context, 'general.view'),
                type: ButtonType.secondary,
                withShadow: false,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AppButton(
                label: FlutterI18n.translate(
                  context,
                  'tacksScreen.beginTrackButton',
                ),
                icon: AppIconTheme.edit,
                isDisabled: true,
              ),
            ),
          ],
        );
      case RunnerTaskStatus.finishingUp:
        return AppButton(
          label: FlutterI18n.translate(context, 'general.complete'),
          icon: AppIconTheme.taskComplete,
        );
      case RunnerTaskStatus.counterOffer:
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TimeCounterWidget(builder: (_) {
                final DateTime now = DateTime.now();
                final Duration left = counterOffer!.expiredAt.difference(now);

                final String content;
                final Color contentColor;
                if (left.isNegative) {
                  content = FlutterI18n.translate(context, 'general.runOut');
                  contentColor = AppWidgetTheme.errorColor;
                } else {
                  content =
                      DateTimeUtility.durationFormat(left, withHours: false);
                  contentColor = AppWidgetTheme.warningColor;
                }

                return AppButton(
                  label: content,
                  type: ButtonType.secondary,
                  withShadow: false,
                  borderColor: contentColor,
                  textColor: contentColor,
                );
              }),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AppButton(
                label: FlutterI18n.translate(
                  context,
                  'tacksScreen.editOfferButton',
                ),
                icon: AppIconTheme.edit,
              ),
            ),
          ],
        );
    }
  }
}

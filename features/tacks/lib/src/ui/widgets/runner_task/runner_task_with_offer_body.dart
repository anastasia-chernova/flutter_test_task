import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/widgets/runner_task/offer_header.dart';
import 'package:tacks/src/ui/widgets/runner_task/runner_task_actions.dart';
import 'package:tacks/src/ui/widgets/runner_task/user_widget.dart';
import 'package:utilities/utilities.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class RunnerTaskWithOfferBody extends StatelessWidget {
  final RunnerTask runnerTask;

  const RunnerTaskWithOfferBody({
    super.key,
    required this.runnerTask,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: OfferHeader(counterOffer: runnerTask.counterOffer!),
        ),
        const SizedBox(height: 6),
        const Divider(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserWidget(user: runnerTask.counterOffer!.user),
                  ),
                  const SizedBox(width: 4),
                  Column(
                    children: <Widget>[
                      Text(
                        DateTimeUtility.timeFormat
                            .format(runnerTask.counterOffer!.completionTime),
                        style: AppTextTheme.manrope20Bold
                            .copyWith(color: AppTextTheme.secondaryColor),
                      ),
                      Text(
                        FlutterI18n.translate(
                          context,
                          'general.completionTime',
                        ),
                        style: AppTextTheme.manrope10Bold.copyWith(
                          color: AppTextTheme.secondaryColor.withOpacity(0.67),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              RunnerTaskActions(
                status: runnerTask.status,
                counterOffer: runnerTask.counterOffer,
              ),
            ],
          ),
        )
      ],
    );
  }
}

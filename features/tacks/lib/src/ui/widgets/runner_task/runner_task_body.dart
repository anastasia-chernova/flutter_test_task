import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/view_extensions/runner_task_to_view_extension.dart';
import 'package:tacks/src/ui/widgets/runner_task/runner_task_actions.dart';
import 'package:tacks/src/ui/widgets/runner_task/time_counter_widget.dart';
import 'package:utilities/utilities.dart';

class RunnerTaskBody extends StatelessWidget {
  final RunnerTask runnerTask;

  const RunnerTaskBody({
    super.key,
    required this.runnerTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TimeCounterWidget(
                builder: (BuildContext context) {
                  final DateTime now = DateTime.now();
                  final Duration left =  runnerTask.expireAt.difference(now);

                  return Text(
                    DateTimeUtility.durationFormat(left),
                    style: AppTextTheme.manrope20Bold
                        .copyWith(color: AppTextTheme.secondaryColor),
                  );
                },
              ),
              const SizedBox(width: 6),
              Text(
                runnerTask.status.getContent(context),
                style: AppTextTheme.manrope16Bold
                    .copyWith(color: AppColors.shuttleGray),
              ),
            ],
          ),
          const SizedBox(height: 26),
          RunnerTaskActions(status: runnerTask.status),
        ],
      ),
    );
  }
}

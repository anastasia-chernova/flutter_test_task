import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

import 'package:tacks/src/ui/widgets/runner_task/runner_task_body.dart';
import 'package:tacks/src/ui/widgets/runner_task/runner_task_with_offer_body.dart';
import 'package:tacks/src/ui/widgets/task_header_widget.dart';

class RunnerTaskWidget extends StatelessWidget {
  final RunnerTask runnerTask;

  const RunnerTaskWidget({
    super.key,
    required this.runnerTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppWidgetTheme.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppWidgetTheme.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: TaskHeaderWidget(
              name: runnerTask.name,
              fee: runnerTask.fee,
            ),
          ),
          if (runnerTask.status == RunnerTaskStatus.counterOffer) ...<Widget>[
            const SizedBox(height: 6),
            RunnerTaskWithOfferBody(runnerTask: runnerTask)
          ] else ...<Widget>[
            const SizedBox(height: 8),
            RunnerTaskBody(runnerTask: runnerTask),
          ],
        ],
      ),
    );
  }
}

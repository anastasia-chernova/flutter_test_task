import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/widgets/runner_task/runner_task_widget.dart';

class RunnerTasksWidget extends StatelessWidget {
  final List<RunnerTask> runnerTasks;

  const RunnerTasksWidget({
    super.key,
    required this.runnerTasks,
  });

  @override
  Widget build(BuildContext context) {
    return TimeTickerInheritedWidget(
      child: AppListView(
        itemBuilder: (_, int index) {
          return RunnerTaskWidget(
            runnerTask: runnerTasks[index],
          );
        },
        itemCount: runnerTasks.length,
      ),
    );
  }
}

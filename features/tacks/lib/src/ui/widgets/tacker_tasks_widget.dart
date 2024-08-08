import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/widgets/tacker_task/tacker_task_widget.dart';

class TackerTasksWidget extends StatelessWidget {
  final List<TackerTask> tackerTasks;

  const TackerTasksWidget({
    super.key,
    required this.tackerTasks,
  });

  @override
  Widget build(BuildContext context) {
    return AppListView(
      itemBuilder: (_, int index) {
        return TackerTaskWidget(
          tackerTask: tackerTasks[index],
        );
      },
      itemCount: tackerTasks.length,
    );
  }
}

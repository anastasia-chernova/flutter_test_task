import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:tacks/src/ui/widgets/tacker_task/tacker_task_actions.dart';
import 'package:tacks/src/ui/widgets/tacker_task/tacker_task_body.dart';
import 'package:tacks/src/ui/widgets/task_header_widget.dart';

class TackerTaskWidget extends StatelessWidget {
  final TackerTask tackerTask;

  const TackerTaskWidget({
    super.key,
    required this.tackerTask,
  });

  @override
  Widget build(BuildContext context) {
    print('${tackerTask.name}');
    return Container(
      padding: const EdgeInsets.all(16.0),
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
          TaskHeaderWidget(
            name: tackerTask.name,
            fee: tackerTask.fee,
          ),
          const SizedBox(height: 10),
          TackerTaskBody(tackerTask: tackerTask),
          const SizedBox(height: 28),
          TackerTaskActions(status: tackerTask.status),
        ],
      ),
    );
  }
}

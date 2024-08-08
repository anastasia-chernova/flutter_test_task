import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:tacks/src/mocked_data/runner_data.dart';
import 'package:tacks/src/mocked_data/tacker_data.dart';
import 'package:tacks/src/ui/widgets/runner_tasks_widget.dart';
import 'package:tacks/src/ui/widgets/tacker_tasks_widget.dart';

class TacksForm extends StatelessWidget {
  const TacksForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 42),
            child: Text(
              FlutterI18n.translate(context, 'tacksScreen.description'),
              style: AppTextTheme.manrope13Medium.copyWith(
                color: AppTextTheme.hintColor,
              ),
            ),
          ),
          const SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: AppSegmentController(
              tabs: <String>[
                FlutterI18n.translate(context, 'tacksScreen.tackerTab'),
                FlutterI18n.translate(context, 'tacksScreen.runnerTab'),
              ],
            ),
          ),
          const SizedBox(height: 17),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                TackerTasksWidget(tackerTasks: tackerTasks),
                RunnerTasksWidget(runnerTasks: runnerTasks),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

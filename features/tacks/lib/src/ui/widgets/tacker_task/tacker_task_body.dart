import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

import 'package:tacks/src/ui/view_extensions/tacker_task_to_view_extensions.dart';

class TackerTaskBody extends StatelessWidget {
  final TackerTask tackerTask;

  const TackerTaskBody({
    super.key,
    required this.tackerTask,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          tackerTask.getTimeContent(context),
          style: tackerTask.status.textStyle,
        ),
        const SizedBox(width: 6),
        Text(
          tackerTask.status.getContent(context),
          style:
              AppTextTheme.manrope16Bold.copyWith(color: AppColors.shuttleGray),
        ),
      ],
    );
  }
}

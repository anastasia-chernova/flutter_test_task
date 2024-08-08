import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:utilities/utilities.dart';

extension TackerTaskStatusToTextStyleExtension on TackerTaskStatus {
  TextStyle get textStyle {
    switch (this) {
      case TackerTaskStatus.created:
        return AppTextTheme.manrope20Bold.copyWith(color: AppColors.athensGrey);
      case TackerTaskStatus.accepted:
        return AppTextTheme.manrope20Bold.copyWith(color: AppColors.athensGrey);
      case TackerTaskStatus.preparing:
        return AppTextTheme.manrope20Bold
            .copyWith(color: AppTextTheme.secondaryColor);
      case TackerTaskStatus.completing:
        return AppTextTheme.manrope20Bold
            .copyWith(color: AppTextTheme.secondaryColor);
      case TackerTaskStatus.finishingUp:
        return AppTextTheme.manrope20Bold
            .copyWith(color: AppTextTheme.secondaryColor);
      case TackerTaskStatus.complete:
        return AppTextTheme.manrope20Bold
            .copyWith(color: AppTextTheme.secondaryColor);
    }
  }
}

extension TackerTaskTimeToViewExtension on TackerTask {
  String getTimeContent(BuildContext context) {
    switch (status) {
      case TackerTaskStatus.created:
        return FlutterI18n.plural(
          context,
          'time.hour',
          estimatedTime.inHours,
        );
      case TackerTaskStatus.accepted:
        return FlutterI18n.plural(
          context,
          'time.hour',
          estimatedTime.inHours,
        );
      case TackerTaskStatus.preparing:
        return DateTimeUtility.timeFormat.format(completeTime!);
      case TackerTaskStatus.completing:
        return DateTimeUtility.timeFormat.format(completeTime!);
      case TackerTaskStatus.finishingUp:
        return DateTimeUtility.timeFormat.format(completeTime!);
      case TackerTaskStatus.complete:
        return DateTimeUtility.timeFormat.format(completeTime!);
    }
  }
}

extension TackerTaskSatusToViewExtension on TackerTaskStatus {
  String getContent(BuildContext context) {
    return FlutterI18n.translate(context, 'tacksScreen.tackerStatus.$name');
  }
}

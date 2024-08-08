import 'package:app_theme/app_theme.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:utilities/utilities.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        UserAvatar(user: user),
        const SizedBox(width: 8),
        AppIconTheme.star(color: AppWidgetTheme.warningColor),
        Text(
          NumberUtility.decimalFormat2.format(user.rate),
          style: AppTextTheme.manrope13SemiBold.copyWith(
            color: AppTextTheme.hintColor,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '|',
          style: AppTextTheme.manrope13Medium.copyWith(
            color: AppTextTheme.lightHintColor,
          ),
        ),
        AppIconTheme.message(color: AppTextTheme.lightHintColor),
        Text(
          <String>[
            user.reviewsCount.toString(),
            FlutterI18n.translate(context, 'general.reviews'),
          ].join(' '),
          style: AppTextTheme.manrope13Medium.copyWith(
            color: AppTextTheme.lightHintColor,
          ),
        ),
      ],
    );
  }
}

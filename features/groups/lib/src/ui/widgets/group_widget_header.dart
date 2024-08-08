import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

class GroupWidgetHeader extends StatelessWidget {
  final Group group;

  const GroupWidgetHeader({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            group.name,
            style: AppTextTheme.manrope16Bold,
          ),
        ),
        const SizedBox(width: 4),
        Container(
          height: 9,
          width: 9,
          decoration: const BoxDecoration(
            color: AppColors.fern,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5),
        RichText(
          text: TextSpan(
            style: AppTextTheme.manrope13SemiBold.copyWith(
              color: AppTextTheme.additionalColor,
            ),
            children: <TextSpan>[
              TextSpan(
                text: group.online.toString(),
                style: AppTextTheme.manrope13SemiBold
                    .copyWith(color: AppTextTheme.primaryColor),
              ),
              const TextSpan(text: '/'),
              TextSpan(text: group.members.toString()),
            ],
          ),
        ),
      ],
    );
  }
}

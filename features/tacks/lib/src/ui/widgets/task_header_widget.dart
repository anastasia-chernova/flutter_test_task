import 'package:app_theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:utilities/utilities.dart';

class TaskHeaderWidget extends StatelessWidget {
  final String name;
  final double fee;

  const TaskHeaderWidget({
    super.key,
    required this.name,
    required this.fee,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(
            name,
            style: AppTextTheme.manrope16SemiBold
                .copyWith(color: AppColors.blackPearl),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          CurrencyUtility.dollarFormat.format(fee),
          style: AppTextTheme.manrope24Bold
              .copyWith(color: AppTextTheme.secondaryColor),
        ),
      ],
    );
  }
}

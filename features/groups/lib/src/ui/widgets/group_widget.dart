import 'package:app_theme/app_theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:groups/src/ui/widgets/group_widget_header.dart';
import 'package:groups/src/ui/widgets/manage_group_button.dart';

class GroupWidget extends StatelessWidget {
  final Group group;

  const GroupWidget({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 17, 13, 13),
      decoration: BoxDecoration(
        color: AppWidgetTheme.primaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppWidgetTheme.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: AppColors.midGrey,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: <Widget>[
                GroupWidgetHeader(group: group),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const ManageGroupButton(),
                    const SizedBox(width: 6),
                    RichText(
                      text: TextSpan(
                        style: AppTextTheme.manrope11Regular.copyWith(
                          color: AppTextTheme.secondaryColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: FlutterI18n.translate(
                              context,
                              'groupsScreen.unacceptedTacks',
                              translationParams: <String, String>{
                                'count': group.unacceptedTacksNumber.toString(),
                              },
                            ),
                            style: AppTextTheme.manrope11Bold.copyWith(
                              color: AppTextTheme.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

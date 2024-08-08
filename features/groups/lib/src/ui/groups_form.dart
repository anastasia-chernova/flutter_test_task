import 'package:app_theme/app_theme.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'package:groups/src/mocked_data/groups_data.dart';
import 'package:groups/src/ui/widgets/private_groups_widget.dart';
import 'package:groups/src/ui/widgets/public_groups_widget.dart';

class GroupsForm extends StatelessWidget {
  const GroupsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 42.0),
            child: Text(
              FlutterI18n.translate(context, 'groupsScreen.description'),
              style: AppTextTheme.manrope13Medium.copyWith(
                color: AppTextTheme.hintColor,
              ),
            ),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchFieldWidget(
              query: '',
              onCrossPressed: () {},
              onFilterPressed: () {},
              onSearch: (String value) {},
              hintText: FlutterI18n.translate(
                context,
                'groupsScreen.searchFieldHint',
              ),
            ),
          ),
          const SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: AppSegmentController(
              tabs: <String>[
                FlutterI18n.translate(context, 'groupsScreen.privateTab'),
                FlutterI18n.translate(context, 'groupsScreen.publicTab'),
              ],
            ),
          ),
          const SizedBox(height: 19),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                PrivateGroupsWidget(groups: privateGroups),
                PublicGroupsWidget(groups: publicGroups),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

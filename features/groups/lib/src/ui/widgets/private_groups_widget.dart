import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

import 'package:groups/src/ui/widgets/group_widget.dart';
import 'package:groups/src/ui/widgets/groups_list_footer_widget.dart';

class PrivateGroupsWidget extends StatelessWidget {
  final List<Group> groups;

  const PrivateGroupsWidget({
    super.key,
    required this.groups,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(0.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                AppListView(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, int index) {
                    return GroupWidget(
                      group: groups[index],
                    );
                  },
                  itemCount: groups.length,
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 28),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: GroupsListFooterWidget(),
          ),
        ),
      ],
    );
  }
}

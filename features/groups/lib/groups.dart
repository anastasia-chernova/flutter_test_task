library groups;

import 'package:navigation/navigation.dart';

import 'groups.gm.dart';
export 'groups.gm.dart';
export 'package:groups/src/ui/groups_screen.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Form,Route')
class GroupsModule extends $GroupsModule {}
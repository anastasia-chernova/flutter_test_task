library tacks;

import 'package:navigation/navigation.dart';

import 'tacks.gm.dart';
export 'tacks.gm.dart';
export 'package:tacks/src/ui/tacks_screen.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Form,Route')
class TacksModule extends $TacksModule {}

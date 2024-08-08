// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:tacks/src/ui/tacks_screen.dart' as _i1;

abstract class $TacksModule extends _i2.AutoRouterModule {
  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TacksRoute.name: (routeData) {
      return _i2.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i1.TacksScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.TacksScreen]
class TacksRoute extends _i2.PageRouteInfo<void> {
  const TacksRoute({List<_i2.PageRouteInfo>? children})
      : super(
          TacksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TacksRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

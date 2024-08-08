import 'package:auto_route/auto_route.dart';
import 'package:groups/groups.dart';
import 'package:home/home.dart';
import 'package:tacks/tacks.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Form|Screen|Step,Route',
  modules: [
    HomeModule,
    TacksModule,
    GroupsModule,
  ],
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: TacksRoute.page,
            ),
            AutoRoute(
              page: GroupsRoute.page,
            ),
          ],
        ),
      ];
}

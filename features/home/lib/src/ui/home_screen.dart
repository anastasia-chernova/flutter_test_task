import 'package:app_theme/app_theme.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:groups/groups.dart';
import 'package:tacks/tacks.dart';
import 'package:navigation/navigation.dart';

@RoutePage<String>()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TacksRoute(),
        GroupsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: AppWidgetTheme.navBarActiveIconColor,
            unselectedItemColor: AppWidgetTheme.navBarInactiveIconColor,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                activeIcon: AppIconTheme.tacksActive(),
                icon: AppIconTheme.tacksInactive(),
                label: FlutterI18n.translate(context, 'Tacks'),
              ),
              BottomNavigationBarItem(
                icon: AppIconTheme.groups(),
                label: FlutterI18n.translate(context, 'Groups'),
              ),
            ],
          ),
        );
      },
    );
  }
}

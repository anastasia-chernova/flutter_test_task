part of core_ui;

typedef BuilderFunction = Widget Function(BuildContext, int);

class AppListView extends StatelessWidget {
  final BuilderFunction itemBuilder;
  final int itemCount;
  final ScrollPhysics? physics;

  const AppListView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: physics,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      itemBuilder: itemBuilder,
      separatorBuilder: (_, __) => const SizedBox(height: 12.0),
      itemCount: itemCount,
    );
  }
}

part of core_ui;

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppWidgetTheme.dividerColor,
    );
  }
}

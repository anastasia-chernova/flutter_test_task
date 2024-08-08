part of core_ui;

class AppSegmentController extends StatelessWidget {
  final List<String> tabs;

  const AppSegmentController({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedTabControl(
      height: 38,
      shape: BoxShape.circle,
      backgroundColor: AppWidgetTheme.segmentBackgroundColor,
      indicatorColor: AppWidgetTheme.segmentActiveBackgroundColor,
      shadow: BoxShadow(
        color: AppWidgetTheme.shadowColor,
        offset: const Offset(0, 4),
        blurRadius: 4,
      ),
      border: Border.all(color: AppWidgetTheme.segmentBorderColor),
      textStyle: AppTextTheme.manrope18Medium,
      tabTextColor: AppWidgetTheme.segmentInactiveTabTextColor,
      selectedTabTextColor: AppWidgetTheme.segmentActiveTabTextColor,
      tabs: List<SegmentTab>.generate(
        tabs.length,
        (index) => SegmentTab(
          label: tabs[index],
        ),
      ),
    );
  }
}

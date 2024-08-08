part of core_ui;

const double _kNavBarPersistentHeight = 54;

class AppNavigationBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final Color? backgroundColor;
  final String? title;
  final TextStyle titleStyle;
  final Color titleColor;
  final List<Widget>? actions;

  AppNavigationBar({
    super.key,
    this.backgroundColor,
    this.title,
    TextStyle? titleStyle,
    Color? titleColor,
    this.actions,
  })  : titleStyle = titleStyle ?? AppTextTheme.manrope20Medium,
        titleColor = titleColor ?? AppColors.black;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: Text(
          title != null ? title!.toElliptical : '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: titleStyle.copyWith(color: titleColor),
        ),
      ),
      actions: actions,
      automaticallyImplyLeading: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_kNavBarPersistentHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final Color backgroundColor = this.backgroundColor != null
        ? CupertinoDynamicColor.resolve(this.backgroundColor!, context)
        : CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }
}

part of core_ui;

enum ButtonType {
  primary,
  secondary;

  bool get isPrimary {
    return this == ButtonType.primary;
  }
}

class AppButton extends StatelessWidget {
  final String label;
  final AppIcon? icon;
  final ButtonType type;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final bool withShadow;
  final bool isDisabled;
  final void Function()? onTap;

  const AppButton({
    super.key,
    required this.label,
    this.icon,
    this.type = ButtonType.primary,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.withShadow = true,
    this.isDisabled = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color contentColor = isDisabled
        ? AppWidgetTheme.buttonDisabledColor
        : textColor ??
            (type.isPrimary
                ? AppWidgetTheme.primaryColor
                : AppWidgetTheme.buttonPrimaryColor);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isDisabled
              ? AppWidgetTheme.primaryColor
              : backgroundColor ??
                  (type.isPrimary
                      ? AppWidgetTheme.buttonPrimaryColor
                      : AppWidgetTheme.buttonSecondaryColor),
          border: Border.all(
            color: isDisabled
                ? AppWidgetTheme.buttonDisabledColor
                : borderColor ??
                    (type.isPrimary
                        ? AppWidgetTheme.buttonPrimaryBorderColor
                        : AppWidgetTheme.buttonSecondaryBorderColor),
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: withShadow
              ? <BoxShadow>[
                  BoxShadow(
                    color: AppWidgetTheme.shadowColor,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) ...<Widget>[
              icon!.call(
                color: contentColor,
                size: 16,
              ),
              const SizedBox(width: 10),
            ],
            Text(
              label,
              textAlign: TextAlign.center,
              style: AppTextTheme.manrope14Medium.copyWith(
                color: contentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

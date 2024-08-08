part of app_theme;

class AppWidgetTheme {
  static Color get transparentColor => AppColors.transparent;

  /// System
  static Color get warningColor => AppColors.gamboge;
  static Color get errorColor => AppColors.mediumCarmine;

  /// Navigation Bar
  static Color get navBarBackgroundColor => AppColors.white;
  static Color get navBarInactiveIconColor => AppColors.aluminium;
  static Color get navBarActiveIconColor => AppColors.fern;

  /// Segment Controller
  static Color get segmentBackgroundColor => AppColors.white;
  static Color get segmentActiveBackgroundColor => AppColors.fern;
  static Color get segmentBorderColor => AppColors.fern;
  static Color get segmentActiveTabTextColor => AppColors.white;
  static Color get segmentInactiveTabTextColor => AppColors.fern;

  static Color get primaryColor => AppColors.white;
  static Color get primaryBackgroundColor => AppColors.tranquil;
  static Color get shadowColor => AppColors.black25;
  static Color get dividerColor => AppColors.solitude;

  static Color get buttonPrimaryColor => AppColors.fern;
  static Color get buttonSecondaryColor => AppColors.transparent;
  static Color get buttonPrimaryBorderColor => AppColors.white;
  static Color get buttonSecondaryBorderColor => AppColors.fern;
  static Color get buttonAdditionBorderColor => AppColors.athensGrey;
  static Color get buttonDisabledColor => AppColors.athensGrey;
}
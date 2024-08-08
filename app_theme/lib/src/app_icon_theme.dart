part of app_theme;

class AppIconTheme {
  static Color get primaryColor => AppColors.midGrey;
  static Color get hintColor => AppColors.shuttleGray;

  static const String _basePath = 'assets/icons/';

  /// Bottom Navigation bar
  static const String _tacksActiveKey = '${_basePath}tacks_active.png';
  static const String _tacksInactiveKey = '${_basePath}tacks_inactive.png';
  static const String _groupsKey = '${_basePath}groups.png';

  static const String _chatKey = '${_basePath}chat.png';
  static const String _notificationKey = '${_basePath}notification.png';
  static const String _menuKey = '${_basePath}menu.png';

  static const String _searchKey = '${_basePath}search.png';
  static const String _editKey = '${_basePath}edit.png';
  static const String _personKey = '${_basePath}person.png';
  static const String _starKey = '${_basePath}star.png';
  static const String _messageKey = '${_basePath}message.png';
  static const String _taskCompleteKey = '${_basePath}task_complete.png';

  /// Bottom Navigation bar
  static AppIcon get tacksActive => AppIcon(_tacksActiveKey);
  static AppIcon get tacksInactive => AppIcon(_tacksInactiveKey);
  static AppIcon get groups => AppIcon(_groupsKey);

  static AppIcon get chat => AppIcon(_chatKey);
  static AppIcon get notification => AppIcon(_notificationKey);
  static AppIcon get menu => AppIcon(_menuKey);

  static AppIcon get search => AppIcon(_searchKey);
  static AppIcon get edit => AppIcon(_editKey);
  static AppIcon get person => AppIcon(_personKey);
  static AppIcon get star => AppIcon(_starKey);
  static AppIcon get message => AppIcon(_messageKey);
  static AppIcon get taskComplete => AppIcon(_taskCompleteKey);
}

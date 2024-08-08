part of core_ui;

class UserAvatar extends StatelessWidget {
  final User user;

  const UserAvatar({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            color: AppColors.midGrey,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: user.status.color,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppWidgetTheme.primaryColor,
              width: 3.5,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppWidgetTheme.shadowColor,
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

extension UserStatusToColor on UserStatus {
  Color get color {
    switch (this) {
      case UserStatus.online:
        return AppColors.fern;
      case UserStatus.offline:
        return AppColors.shadyLady;
      case UserStatus.unavailable:
        return AppColors.mediumCarmine;
    }
  }
}

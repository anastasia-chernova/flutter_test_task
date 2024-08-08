part of domain;

class User {
  final String avatarUrl;
  final UserStatus status;
  final double rate;
  final int reviewsCount;

  const User({
    required this.avatarUrl,
    required this.status,
    required this.rate,
    required this.reviewsCount,
  });
}

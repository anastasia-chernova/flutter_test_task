part of domain;

class Group {
  final String name;
  final String avatarUrl;
  final int unacceptedTacksNumber;
  final int online;
  final int members;

  const Group({
    required this.name,
    required this.avatarUrl,
    required this.unacceptedTacksNumber,
    required this.online,
    required this.members,
  });
}

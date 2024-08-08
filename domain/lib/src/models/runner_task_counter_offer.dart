part of domain;

class RunnerTaskCounterOffer {
  final double? fee;
  final DateTime completionTime;
  final User user;
  final Duration availableTime;
  final DateTime expiredAt;

  const RunnerTaskCounterOffer({
    required this.fee,
    required this.completionTime,
    required this.user,
    required this.availableTime,
    required this.expiredAt,
  });
}

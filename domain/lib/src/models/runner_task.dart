part of domain;

class RunnerTask {
  final String name;
  final double fee;
  final RunnerTaskStatus status;
  final Duration? availableTime;
  final DateTime expireAt;
  final RunnerTaskCounterOffer? counterOffer;

  const RunnerTask({
    required this.name,
    required this.fee,
    required this.status,
    required this.availableTime,
    required this.expireAt,
    required this.counterOffer,
  });
}

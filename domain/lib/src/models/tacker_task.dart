part of domain;

class TackerTask {
  final String name;
  final double fee;
  final TackerTaskStatus status;
  final Duration estimatedTime;
  final DateTime? completeTime;

  const TackerTask({
    required this.name,
    required this.fee,
    required this.status,
    required this.estimatedTime,
    required this.completeTime,
  });
}

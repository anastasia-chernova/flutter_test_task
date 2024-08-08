import 'package:domain/domain.dart';

List<TackerTask> get tackerTasks {
  final DateTime now = DateTime.now();

  return <TackerTask>[
    TackerTask(
      name: 'Need Laudry and Dishes Done (Room 903)',
      fee: 23.5,
      status: TackerTaskStatus.complete,
      estimatedTime: const Duration(hours: 4),
      completeTime: DateTime(now.year, now.month, now.day, 19, 15),
    ),
    TackerTask(
      name: 'Need To Log In to Someone’s Disney Plus',
      fee: 5.5,
      status: TackerTaskStatus.finishingUp,
      estimatedTime: const Duration(hours: 3),
      completeTime: DateTime(now.year, now.month, now.day, 19, 10),
    ),
    TackerTask(
      name: 'Need To Log In to Someone’s Disney Plus',
      fee: 5.5,
      status: TackerTaskStatus.completing,
      estimatedTime: const Duration(hours: 3),
      completeTime: DateTime(now.year, now.month, now.day, 19, 10),
    ),
    TackerTask(
      name: 'Need To Log In to Someone’s Disney Plus',
      fee: 5.5,
      status: TackerTaskStatus.preparing,
      estimatedTime: const Duration(hours: 3),
      completeTime: DateTime(now.year, now.month, now.day, 19, 10),
    ),
    const TackerTask(
      name: 'Need Someone to Re-string my Fender Strat',
      fee: 40.0,
      status: TackerTaskStatus.accepted,
      estimatedTime: Duration(hours: 3),
      completeTime: null,
    ),
    const TackerTask(
      name: 'Laundry (Room 1320)',
      fee: 35.0,
      status: TackerTaskStatus.created,
      estimatedTime: Duration(hours: 1),
      completeTime: null,
    ),
  ];
}

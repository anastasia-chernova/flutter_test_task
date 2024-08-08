import 'package:domain/domain.dart';

List<RunnerTask> get runnerTasks {
  final DateTime now = DateTime.now();

  return <RunnerTask>[
    RunnerTask(
      name: 'Pick Up My Clothes from Dry Cleaning',
      fee: 15.0,
      status: RunnerTaskStatus.finishingUp,
      availableTime: const Duration(hours: 3, minutes: 50),
      expireAt: now.add(
        const Duration(hours: 3, minutes: 40),
      ),
      counterOffer: null,
    ),
    RunnerTask(
      name: 'Avalanche Party Set Up Crew',
      fee: 50.0,
      status: RunnerTaskStatus.pending,
      availableTime: const Duration(hours: 1, minutes: 25),
      expireAt: now.add(
        const Duration(hours: 1, minutes: 25),
      ),
      counterOffer: null,
    ),
    RunnerTask(
      name: 'Need Laundry and Dishes Done (Room 903)',
      fee: 23.5,
      status: RunnerTaskStatus.counterOffer,
      expireAt: now.add(
        const Duration(minutes: 15),
      ),
      availableTime: null,
      counterOffer: RunnerTaskCounterOffer(
        fee: null,
        completionTime: DateTime(now.year, now.month, now.day, 19, 15),
        user: const User(
          avatarUrl: '',
          status: UserStatus.online,
          rate: 5.0,
          reviewsCount: 200,
        ),
        availableTime: const Duration(hours: 1),
        expiredAt: now.add(
          const Duration(minutes: 15),
        ),
      ),
    ),
    RunnerTask(
      name: 'Need Laundry and Dishes Done (Room 903)',
      fee: 23.5,
      status: RunnerTaskStatus.counterOffer,
      availableTime: null,
      expireAt: now.add(
        const Duration(minutes: 2),
      ),
      counterOffer: RunnerTaskCounterOffer(
        fee: 30,
        completionTime: DateTime(now.year, now.month, now.day, 19, 15),
        user: const User(
          avatarUrl: '',
          status: UserStatus.offline,
          rate: 5.0,
          reviewsCount: 200,
        ),
        availableTime: const Duration(hours: 1),
        expiredAt: now.add(
          const Duration(minutes: 2),
        ),
      ),
    ),
    RunnerTask(
      name: 'Need Laundry and Dishes Done (Room 903)',
      fee: 23.5,
      status: RunnerTaskStatus.counterOffer,
      availableTime: null,
      expireAt: now.add(
        const Duration(minutes: 15),
      ),
      counterOffer: RunnerTaskCounterOffer(
        fee: 40,
        completionTime: DateTime(now.year, now.month, now.day, 19, 15),
        user: const User(
          avatarUrl: '',
          status: UserStatus.unavailable,
          rate: 5.0,
          reviewsCount: 200,
        ),
        availableTime: const Duration(hours: 1),
        expiredAt: now.add(
          const Duration(minutes: 15),
        ),
      ),
    ),
  ];
}

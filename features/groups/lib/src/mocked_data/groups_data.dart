import 'package:domain/domain.dart';

List<Group> get privateGroups {
  return <Group>[
    const Group(
      name: 'Dorm Group',
      avatarUrl: '',
      unacceptedTacksNumber: 4,
      online: 32,
      members: 235,
    ),
    const Group(
      name: 'History Class',
      avatarUrl: '',
      unacceptedTacksNumber: 3,
      online: 20,
      members: 199,
    ),
    const Group(
      name: 'Texas Fiji PC’ 21',
      avatarUrl: '',
      unacceptedTacksNumber: 30,
      online: 5,
      members: 45,
    ),
    const Group(
      name: 'Cabo Spring Break Trip',
      avatarUrl: '',
      unacceptedTacksNumber: 7,
      online: 3,
      members: 12,
    ),
    const Group(
      name: 'Tack Accounting Dep',
      avatarUrl: '',
      unacceptedTacksNumber: 2,
      online: 5,
      members: 20,
    ),
    const Group(
      name: 'Dorm Room 903',
      avatarUrl: '',
      unacceptedTacksNumber: 1,
      online: 1,
      members: 4,
    ),
  ];
}

List<Group> get publicGroups {
  return <Group>[
    const Group(
      name: 'UT Austin',
      avatarUrl: '',
      unacceptedTacksNumber: 35,
      online: 1020,
      members: 12350,
    ),
    const Group(
      name: 'University Group',
      avatarUrl: '',
      unacceptedTacksNumber: 12,
      online: 100,
      members: 350,
    ),
  ];
}

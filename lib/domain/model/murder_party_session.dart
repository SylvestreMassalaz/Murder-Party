class MurderPartySession {
  final String id;
  final String name;
  final SessionType sessionType;

  const MurderPartySession({
    required this.id,
    required this.name,
    required this.sessionType,
  });
}

enum SessionType { coordinator, player }

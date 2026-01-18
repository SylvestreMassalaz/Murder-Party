import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/domain/model/result.dart';

class MurderRepository {
  const MurderRepository();

  Future<Result<List<MurderPartySession>>> getMurderPartySessions() async {
    return Result.ok([
      MurderPartySession(
        id: "AAAAA",
        name: "The yellow room",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAB",
        name: "Unsolved mysteries 1",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAC",
        name: "A case in Pink",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAD",
        name: "The mist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAE",
        name: "Oysters in Arcachon",
        sessionType: .player,
      ),
      MurderPartySession(id: "AAAAF", name: "Stuff", sessionType: .coordinator),
      MurderPartySession(id: "AAAAG", name: "Stuff", sessionType: .player),
      MurderPartySession(
        id: "AAAAH",
        name: "Stuff 2",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAI",
        name: "I'm a very long title please witness me",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAJ",
        name: "The not soyellow room",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAK", name: "The room", sessionType: .player),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAB",
        name: "The yellow room",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAC",
        name: "A case in Pink",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAD", name: "The mist", sessionType: .player),
      MurderPartySession(
        id: "AAAAE",
        name: "Oysters in Arcachon",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAF", name: "Stuff", sessionType: .player),
      MurderPartySession(id: "AAAAG", name: "Stuff", sessionType: .coordinator),
      MurderPartySession(id: "AAAAH", name: "Stuff 2", sessionType: .player),
      MurderPartySession(
        id: "AAAAI",
        name: "I'm a very long title please witness me",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAJ",
        name: "The not soyellow room",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAK",
        name: "The room",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAC",
        name: "A case in Pink",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAD",
        name: "The mist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAE",
        name: "Oysters in Arcachon",
        sessionType: .player,
      ),
      MurderPartySession(id: "AAAAF", name: "Stuff", sessionType: .coordinator),
      MurderPartySession(id: "AAAAG", name: "Stuff", sessionType: .player),
      MurderPartySession(
        id: "AAAAH",
        name: "Stuff 2",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAI",
        name: "I'm a very long title please witness me",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAJ",
        name: "The not soyellow room",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAK", name: "The room", sessionType: .player),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAC",
        name: "A case in Pink",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAD", name: "The mist", sessionType: .player),
      MurderPartySession(
        id: "AAAAE",
        name: "Oysters in Arcachon",
        sessionType: .coordinator,
      ),
      MurderPartySession(id: "AAAAF", name: "Stuff", sessionType: .player),
      MurderPartySession(id: "AAAAG", name: "Stuff", sessionType: .coordinator),
      MurderPartySession(id: "AAAAH", name: "Stuff 2", sessionType: .player),
      MurderPartySession(
        id: "AAAAI",
        name: "I'm a very long title please witness me",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAJ",
        name: "The not soyellow room",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAK",
        name: "The room",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .coordinator,
      ),
      MurderPartySession(
        id: "AAAAL",
        name: "The disaster of an Artist",
        sessionType: .player,
      ),
    ]);
  }
}

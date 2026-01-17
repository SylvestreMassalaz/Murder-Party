import 'package:murder_party/domain/model/murder_party.dart';
import 'package:murder_party/domain/model/result.dart';

class MurderRepository {
  const MurderRepository();

  Future<Result<List<MurderParty>>> getLocalMurderParties() async {
    return Result.ok([
      MurderParty(id: "AAAAA", name: "The yellow room"),
      MurderParty(id: "AAAAB", name: "Unsolved mysteries 1"),
      MurderParty(id: "AAAAC", name: "A case in Pink"),
      MurderParty(id: "AAAAD", name: "The mist"),
      MurderParty(id: "AAAAE", name: "Oysters in Arcachon"),
      MurderParty(id: "AAAAF", name: "Stuff"),
      MurderParty(id: "AAAAG", name: "Stuff"),
      MurderParty(id: "AAAAH", name: "Stuff 2"),
      MurderParty(id: "AAAAI", name: "I'm a very long title please witness me"),
      MurderParty(id: "AAAAJ", name: "The not soyellow room"),
      MurderParty(id: "AAAAK", name: "The room"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
      MurderParty(id: "AAAAL", name: "The disaster of an Artist"),
    ]);
  }
}

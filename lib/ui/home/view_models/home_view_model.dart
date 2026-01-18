import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:murder_party/data/repositories/murder_repository.dart';
import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/domain/model/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required MurderRepository murderRepository})
    : _murderRepository = murderRepository;

  final MurderRepository _murderRepository;

  List<MurderPartySession> _localMurderParties = [];

  UnmodifiableListView<MurderPartySession> get murderPartySessions =>
      UnmodifiableListView(_localMurderParties);

  Future<Result<List<MurderPartySession>>> load() async {
    try {
      final sessions = await _murderRepository.getMurderPartySessions();
      switch (sessions) {
        case OK<List<MurderPartySession>>():
          _localMurderParties = sessions.value;
        case Error<List<MurderPartySession>>():
        // Handle error case if needed
      }
      return sessions;
    } finally {
      notifyListeners();
    }
  }
}

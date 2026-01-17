import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:murder_party/data/repositories/murder_repository.dart';
import 'package:murder_party/data/services/murder_rest_api.dart';
import 'package:murder_party/domain/model/murder_party.dart';
import 'package:murder_party/domain/model/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required MurderRepository murderRepository,
    required MurderRestApi murderRestApi,
  }) : _murderRepository = murderRepository,
       _murderRestApi = murderRestApi;

  final MurderRepository _murderRepository;
  final MurderRestApi _murderRestApi;

  List<MurderParty> _localMurderParties = [];

  String url = "";

  UnmodifiableListView<MurderParty> get localMurderParties =>
      UnmodifiableListView(_localMurderParties);

  Future<Result<List<MurderParty>>> load() async {
    try {
      final localMurders = await _murderRepository.getLocalMurderParties();
      switch (localMurders) {
        case OK<List<MurderParty>>():
          _localMurderParties = localMurders.value;
          url = await _murderRestApi.startApi("murderId");
        case Error<List<MurderParty>>():
        // Handle error case if needed
      }
      return localMurders;
    } finally {
      notifyListeners();
    }
  }
}

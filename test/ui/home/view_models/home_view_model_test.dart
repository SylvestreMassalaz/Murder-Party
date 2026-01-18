import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:murder_party/data/repositories/murder_repository.dart';
import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/domain/model/result.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';

@GenerateNiceMocks([MockSpec<MurderRepository>()])
import 'home_view_model_test.mocks.dart';

void main() {
  group('Home view model', () {
    late MurderRepository murderRepository;
    late HomeViewModel homeViewModel;

    setUp(() {
      provideDummy(Result<List<MurderPartySession>>.ok([]));
      murderRepository = MockMurderRepository();
      homeViewModel = HomeViewModel(murderRepository: murderRepository);
    });

    test('should have empty list of murder at start', () {
      expect(homeViewModel.murderPartySessions, isEmpty);
    });

    test('should retrieve sessions and notify change on load', () async {
      final List<MurderPartySession> sessions = [
        MurderPartySession(
          id: "aaaaa",
          name: "Murder party 1",
          sessionType: .coordinator,
        ),
        MurderPartySession(
          id: "bbbbb",
          name: "Murder party 2",
          sessionType: .player,
        ),
      ];
      
      when(
        murderRepository.getMurderPartySessions(),
      ).thenAnswer((_) async => Result.ok(sessions));

      var hasBeenUpdated = false;
      homeViewModel.addListener(() => hasBeenUpdated = true);

      await homeViewModel.load();

      expect(homeViewModel.murderPartySessions, equals(sessions));
      expect(hasBeenUpdated, true);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/l10n/app_localizations.dart';

class MurderSessionListItem extends StatelessWidget {
  const MurderSessionListItem({super.key, required this.murderPartySession});

  final MurderPartySession murderPartySession;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(murderPartySession.name),
            trailing: Chip(
              label: Text(
                _computeTypeLabel(murderPartySession.sessionType, context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _computeTypeLabel(SessionType type, BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    switch (type) {
      case .coordinator:
        return localizations.coordinator;
      case .player:
        return localizations.player;
    }
  }
}

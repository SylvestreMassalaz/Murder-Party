import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:murder_party/l10n/app_localizations.dart';

class NoMurderSessions extends StatelessWidget {
  const NoMurderSessions({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Center(
        child: Column(
          spacing: 10,
          children: [
            Icon(
              Icons.heart_broken,
              color: Colors.redAccent,
              size: 64,
              semanticLabel: 'Heart broken',
            ),
            Text(localization.noMurderText),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  icon: Icon(Icons.create),
                  label: Text(localization.createNewMurderParty),
                  onPressed: () => developer.log("Clicked on create"),
                ),
                FilledButton.icon(
                  icon: Icon(Icons.qr_code),
                  label: Text(localization.joinMurder),
                  onPressed: () => developer.log("Clicked on join"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoMurderSessions extends StatelessWidget {
  const NoMurderSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(50),
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
            Text(
              "No murder session could be found. You can either join an existing session or create your own",
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  icon: Icon(Icons.create),
                  label: Text("Create new murder"),
                  onPressed: () => print("Clicked on create"),
                ),
                FilledButton.icon(
                  icon: Icon(Icons.qr_code),
                  label: Text("Join existing murder"),
                  onPressed: () => print("Clicked on join"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

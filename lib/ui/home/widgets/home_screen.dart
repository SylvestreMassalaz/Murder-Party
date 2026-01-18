import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';
import 'package:murder_party/ui/home/widgets/murder_session_list_item.dart';
import 'package:murder_party/ui/home/widgets/no_murder_sessions.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.viewModel}) {
    viewModel.load();
  }

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: const Text("Murder Party"),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  pinned: true,
                ),
                ..._buildSessionList(context),
              ],
            );
          },
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        overlayStyle: ExpandableFabOverlayStyle(blur: 0.9),
        openButtonBuilder: DefaultFloatingActionButtonBuilder(
          child: Icon(Icons.add_rounded),
          fabSize: ExpandableFabSize.regular,
          shape: CircleBorder(),
        ),
        closeButtonBuilder: DefaultFloatingActionButtonBuilder(
          child: Icon(Icons.close),
          fabSize: ExpandableFabSize.small,
          shape: CircleBorder(),
        ),
        children: [
          FloatingActionButton.small(
            onPressed: () => print("Used fad for create"),
            tooltip: "Create new murder",

            child: Icon(Icons.add),
          ),
          FloatingActionButton.small(
            onPressed: () => print("Used fad for join"),
            tooltip: "Join existing murder",
            child: Icon(Icons.qr_code),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSessionList(BuildContext context) {
    if (viewModel.murderPartySessions.isEmpty) {
      return [SliverToBoxAdapter(child: NoMurderSessions())];
    } else {
      return [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.only(
              left: 20,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              children: [
                Text("Recent sessions", textScaler: TextScaler.linear(1.5)),
              ],
            ),
          ),
        ),
        SliverList.builder(
          itemCount: viewModel.murderPartySessions.length,
          itemBuilder: (context, index) {
            return MurderSessionListItem(
              murderPartySession: viewModel.murderPartySessions[index],
            );
          },
        ),
      ];
    }
  }
}

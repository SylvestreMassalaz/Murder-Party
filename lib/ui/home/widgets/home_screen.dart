import 'package:flutter/material.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.viewModel}) {
    viewModel.load();
  }

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Murder Party"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Card(
                  child: Column(
                    children: [
                      ListTile(title: Text("Server url : ${viewModel.url}")),
                    ],
                  ),
                ),
              ),
              SliverList.builder(
                itemCount: viewModel.localMurderParties.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(viewModel.localMurderParties[index].name),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
